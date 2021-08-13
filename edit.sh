#!/bin/bash

[ -z "$VISUAL" ] && { echo "VISUAL not set" >&2; exit 1; }

FILE="$(dirname "$(realpath "$0")")/keyboards/massdrop/alt/keymaps/kaipot/keymap.c"
EDITORBIN="$(which "$VISUAL")"

"$EDITORBIN" "$FILE"

