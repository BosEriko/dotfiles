#!/bin/bash

(cd $STORAGE/Anime; for anime in *.mkv; do mv "$anime" "$(echo $anime | sed 's/[[][^]]*[]]//g' | sed 's/[(][^)]*[)]//g'| awk '{ print substr( $0, 1, length($0)-4 ) }' | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//').mkv"; done)
