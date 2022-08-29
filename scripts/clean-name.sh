#!/bin/bash

for anime in $STORAGE/Anime/*
do
    mv "$file" $(echo $query | sed "s/[[][^]]*[]]//g" | sed "s/[(][^)]*[)]//g")
done
