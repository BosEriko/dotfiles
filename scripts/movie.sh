#!/bin/bash

# Dependencies - webtorrent, mpv
# https://github.com/BreadMoncher/notflix
# https://github.com/Bugswriter/notflix

mkdir -p $HOME/.cache/notflix

baseurl="https://1337x.wtf"
cachedir="$HOME/.cache/notflix"

if [ -z $1 ]; then
  echo "Search for Shows:  "
  read query
else
  query=$1
fi

query="$(echo $query | sed 's/ /+/g')"

#curl -s https://1337x.to/category-search/$query/Movies/1/ > $cachedir/tmp.html
curl -s $baseurl/search/$query/1/ > $cachedir/tmp.html

# Get Titles
grep -o '<a href="/torrent/.*</a>' $cachedir/tmp.html |
  sed 's/<[^>]*>//g' > $cachedir/titles.bak

result_count=$(wc -l $cachedir/titles.bak | awk '{print $1}')
if [ "$result_count" -lt 1 ]; then
  echo "😔 No Result found. Try again 🔴"
  exit 0
fi

# Seeders and Leechers
grep -o '<td class="coll-2 seeds.*</td>\|<td class="coll-3 leeches.*</td>' $cachedir/tmp.html |
  sed 's/<[^>]*>//g' | sed 'N;s/\n/ /' > $cachedir/seedleech.bak

# Size
grep -o '<td class="coll-4 size.*</td>' $cachedir/tmp.html |
  sed 's/<span class="seeds">.*<\/span>//g' |
  sed -e 's/<[^>]*>//g' > $cachedir/size.bak

# Links
grep -E '/torrent/' $cachedir/tmp.html |
  sed -E 's#.*(/torrent/.*)/">.*/#\1#' |
  sed 's/td>//g' > $cachedir/links.bak

# Cleaning up some data to display
sed 's/\./ /g; s/\-/ /g' $cachedir/titles.bak |
  sed 's/[^A-Za-z0-9 ]//g' | tr -s " " > $cachedir/tmp && mv $cachedir/tmp $cachedir/titles.bak

awk '{print NR " - [Size:"$0" "}' $cachedir/size.bak > $cachedir/tmp && mv $cachedir/tmp $cachedir/size.bak
awk '{print "| S:"$1 " | L:"$2"] —" }' $cachedir/seedleech.bak > $cachedir/tmp && mv $cachedir/tmp $cachedir/seedleech.bak

# Getting the line number
echo "$(paste -d\  $cachedir/size.bak $cachedir/seedleech.bak $cachedir/titles.bak)"
echo "Select your stream"
read LINE

if [ -z "$LINE" ]; then
  echo "😔 No Result selected. Exiting... 🔴"
  exit 0
fi
echo "🔍 Searching Magnet seeds 🧲"

# Get the magnet
url=$(head -n $LINE $cachedir/links.bak | tail -n +$LINE)
fullURL="${baseurl}${url}/"
curl -s $fullURL > $cachedir/tmp.html
magnet=$(grep -Eo "magnet:\?xt=urn:btih:[a-zA-Z0-9]*" $cachedir/tmp.html | head -n 1)

# Download the file
webtorrent "$magnet" --out $STORAGE/Movies
