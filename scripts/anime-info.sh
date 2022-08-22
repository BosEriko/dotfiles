#!/bin/bash

if [ -z $1 ]; then
    echo "Anime Name:  "
    read query
else
    query=$1
fi

anime-cli "$query"
