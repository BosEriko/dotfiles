#!/bin/bash

if [ -z $1 ]; then
    echo "File Name:  "
    read query
else
    query=$1
fi

echo "$query" | sed "s/[[][^)]*[]]//g" | sed "s/[(][^)]*[)]//g"
