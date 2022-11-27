#!/bin/bash

echo "file type to convert FROM:"
read FROM

echo "file type to convert TO:"
read TO

for i in *.$FROM
do ffmpeg -i "$i" "${i%.*}.$TO"
done
