#!/bin/bash

# Uses 'convert' of 'imagemagick' package

# Cut and generate part images vertically into n equal pieces
# Images go into folder ./$1_parts/

# $1 -- image
# $2 -- number of parts

[ -z "$1" ] && echo "First argument : Location of the image - not supplied" && exit 1
[ -z "$2" ] && echo "Second argument : Number of parts - not supplied" && exit 1

let imgWidth=$(convert $1 -ping -format "%w" info:)
let imgHeight=$(convert $1 -ping -format "%h" info:)
let parts=$2

let eachHeight=$((imgHeight/parts))
let shiftx=0
let shifty=0

mkdir -p "$1_parts"

let counter=0
while (($counter < $parts)) ; do
    echo "Generating part $((counter+1))"
    convert -extract "$imgWidth""x""$eachHeight"+"$shiftx"+"$shifty" $1 "$1"_parts/part"_$((counter+1))".png
    counter=$((counter + 1))
    shifty=$((shifty + eachHeight))
done
