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

curl -s "$baseurl/?f=0&c=0_0&q=$query&p=1" > $cachedir/base.html

# Clean Data
grep -v '<i class="fa fa-comments-o"></i>' $cachedir/base.html |
  sed -n -e '/<tr class="/,/<\/tr>/p' |
  sed 's/<[^>]*>//g' |
  sed -e 's/^\s*//' -e '/^$/d' > $cachedir/data.bw

# Title
cat $cachedir/data.bw |
  head -1 |
  tail -1 > $cachedir/title.bw
sed -e '1,1d' $cachedir/data.bw |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/title.bw

# Size
cat $cachedir/data.bw |
  head -2 |
  tail -1 > $cachedir/size.bw
sed -e '1,2d' $cachedir/data.bw |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/size.bw

# Seeders
cat $cachedir/data.bw |
  head -4 |
  tail -1 > $cachedir/seeders.bw
sed -e '1,4d' $cachedir/data.bw |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/seeders.bw

# Leechers
cat $cachedir/data.bw |
  head -5 |
  tail -1 > $cachedir/leechers.bw
sed -e '1,5d' $cachedir/data.bw |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/leechers.bw

# Downloads
cat $cachedir/data.bw |
  head -6 |
  tail -1 > $cachedir/downloads.bw
sed -e '1,6d' $cachedir/data.bw |
  awk 'NR % 6 == 0' |
  head -19 >> $cachedir/downloads.bw

# Clearning up some data to display
awk '{print NR " - [Size:"$0""}' $cachedir/size.bw > $cachedir/tmp && mv $cachedir/tmp $cachedir/size.bw
awk '{print "| S:"$0""}' $cachedir/seeders.bw > $cachedir/tmp && mv $cachedir/tmp $cachedir/seeders.bw
awk '{print "| L:"$0"] —"}' $cachedir/leechers.bw > $cachedir/tmp && mv $cachedir/tmp $cachedir/leechers.bw

# Magnet links
grep -o '<a href="magnet.*</a>' $cachedir/base.html |
  awk '{ print substr ($0, 10 ) }' |
  awk '{ print substr( $0, 1, length($0)-40 ) }' |
  head -20 > $cachedir/magnet.bw

# Getting the line number
echo "$(paste -d\  $cachedir/size.bw $cachedir/seeders.bw $cachedir/leechers.bw $cachedir/title.bw)"
echo "Select your stream"
read LINE

echo $LINE
