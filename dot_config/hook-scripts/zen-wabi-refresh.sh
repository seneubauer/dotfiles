#!/usr/bin/zsh

set -euo pipefail

ZEN_PROFILE="1jcacxgc.Default (release)"
ZEN_CHROME="$HOME/.config/zen/$ZEN_PROFILE/chrome"

mkdir -p "$ZEN_CHROME"

MATUGEN_JSON="$HOME/.config/matugen/current.json
