#!/bin/bash

(source ~/.files/zsh/env.z.sh; cd $STORAGE/Anime; for anime in *.mkv; do mv "$anime" "$(echo $anime | awk '{ print substr( $0, 1, length($0)-4 ) }' | sed 's/[[][^]]*[]]//g' | sed 's/[(][^)]*[)]//g' | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//').mkv"; done)
