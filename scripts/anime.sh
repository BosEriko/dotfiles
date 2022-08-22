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
  sed -n -e '/<tr class="default">/,/<\/tr>/p' |
  sed 's/<[^>]*>//g' |
  sed -e 's/^\s*//' -e '/^$/d' > $cachedir/data.bw

# Magnet links
grep -o '<a href="magnet.*</a>' $cachedir/base.html |
  awk '{ print substr ($0, 10 ) }' |
  awk '{ print substr( $0, 1, length($0)-40 ) }' > $cachedir/magnet.bw
