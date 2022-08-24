#!/bin/bash

# Dependencies - webtorrent, mpv

mkdir -p $HOME/.cache/aniflix

baseurl="https://nyaa.si"
cachedir="$HOME/.cache/aniflix"

if [ -z $1 ]; then
  echo "Search for Anime:  "
  read query
else
  query=$1
fi

query="$(echo $query | sed 's/ /+/g')"

curl -s "$baseurl/?f=2&c=1_2&q=$query&p=1" > $cachedir/base.html

# Clean Data
grep -v '<i class="fa fa-comments-o"></i>' $cachedir/base.html |
  sed -n -e '/<tr class="success">/,/<\/tr>/p' |
  sed 's/<[^>]*>//g' |
  sed -e 's/^\s*//' -e '/^$/d' > $cachedir/data.bak

# Title
cat $cachedir/data.bak |
  head -1 |
  tail -1 > $cachedir/title.bak
sed -e '1,1d' $cachedir/data.bak |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/title.bak

result_count=$(wc -l $cachedir/title.bak | awk '{print $1}')
if [ "$result_count" -lt 1 ]; then
  echo "😔 No Result found. Try again 🔴"
  exit 0
fi

# Size
cat $cachedir/data.bak |
  head -2 |
  tail -1 > $cachedir/size.bak
sed -e '1,2d' $cachedir/data.bak |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/size.bak

# Seeders
cat $cachedir/data.bak |
  head -4 |
  tail -1 > $cachedir/seeders.bak
sed -e '1,4d' $cachedir/data.bak |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/seeders.bak

# Leechers
cat $cachedir/data.bak |
  head -5 |
  tail -1 > $cachedir/leechers.bak
sed -e '1,5d' $cachedir/data.bak |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/leechers.bak

# Downloads
cat $cachedir/data.bak |
  head -6 |
  tail -1 > $cachedir/downloads.bak
sed -e '1,6d' $cachedir/data.bak |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/downloads.bak

# Cleaning up some data to display
awk '{print NR " - [Size:"$0""}' $cachedir/size.bak > $cachedir/tmp && mv $cachedir/tmp $cachedir/size.bak
awk '{print "| S:"$0""}' $cachedir/seeders.bak > $cachedir/tmp && mv $cachedir/tmp $cachedir/seeders.bak
awk '{print "| L:"$0"] —"}' $cachedir/leechers.bak > $cachedir/tmp && mv $cachedir/tmp $cachedir/leechers.bak

# Magnet links
grep -o '<a href="magnet.*</a>' $cachedir/base.html |
  awk '{ print substr ($0, 10 ) }' |
  awk '{ print substr( $0, 1, length($0)-40 ) }' |
  head -20 > $cachedir/magnet.bak

# Getting the line number
echo "$(paste -d\  $cachedir/size.bak $cachedir/seeders.bak $cachedir/leechers.bak $cachedir/title.bak)"
echo "Select your stream"
read LINE

if [ -z "$LINE" ]; then
  echo "😔 No Result selected. Exiting... 🔴"
  exit 0
fi
echo "🔍 Searching Magnet seeds 🧲"

# Get the magnet
magnet=$(head -$LINE $cachedir/magnet.bak | tail -1)

# Download the file
webtorrent "$magnet" --out $STORAGE/Anime
