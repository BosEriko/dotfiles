#!/bin/bash

(cd $STORAGE/Anime; for anime in *.mkv; do mv "$anime" "$(echo $anime | sed 's/[[][^]]*[]]//g' | sed 's/[(][^)]*[)]//g' | sed -e 's/^\s*//' -e '/^$/d')"; done)
