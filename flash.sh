#!/bin/bash

# https://github.com/Massdrop/mdloader

SCRIPTDIR="$(dirname "$(realpath "$0")")"

# compile
cd "$SCRIPTDIR"
qmk compile -kb massdrop/alt -km kaipot || exit 1

# flash
cd mdloader

FILE="$SCRIPTDIR/.build/massdrop_alt_kaipot.bin"
[ ! -f "$FILE" ] && { echo "$FILE does not exist" >&2; exit 1; }

echo
echo "#########################################"
echo "##### restart into bootloader: fn+b #####"
echo "#########################################"
echo
./mdloader_linux --first --download "$FILE" --restart

