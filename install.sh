#!/usr/bin/env bash
# Copies the presets into Easy Effects' config folder and fixes the impulse-response path.
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
D="${XDG_CONFIG_HOME:-$HOME/.config}/easyeffects"
mkdir -p "$D/output" "$D/irs" "$D/autoload/output"
cp "$HERE"/output/*.json "$D/output/"
cp "$HERE"/irs/* "$D/irs/"
cp "$HERE"/autoload/output/*.json "$D/autoload/output/"
sed -i "s|/home/USER/.config/easyeffects|$D|g" "$D/output/Acer VN7 Dolby Original.json"
echo "Installed to $D. Pick a preset in Easy Effects (Presets button)."
