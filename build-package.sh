#!/bin/bash
# Script to create the ZIP archive compatible with KiCad PCM
# IMPORTANT: metadata.json must be at the ROOT of the archive (ISO 21320-1 compatible)

cd "$(dirname "$0")"
OUTPUT="${1:-./build/kicadmaxcolors_1.0.0.zip}"
STAGING=$(mktemp -d)

# Remove the old archive
rm -f "$OUTPUT"

# Build from staging dir to ensure clean structure (no .DS_Store, __MACOSX, etc.)
cp metadata.json "$STAGING/"
mkdir -p "$STAGING/colors"
cp colors/KiCadMaxColors.json "$STAGING/colors/"
[ -f resources/icon.png ] && mkdir -p "$STAGING/resources" && cp resources/icon.png "$STAGING/resources/"

# Create ZIP: -X excludes extra attributes (no Mac resource forks)
mkdir -p "$(dirname "$OUTPUT")"
OUTPUT_ABS="$(cd "$(dirname "$OUTPUT")" && pwd)/$(basename "$OUTPUT")"
(cd "$STAGING" && zip -r -X "$OUTPUT_ABS" .)
rm -rf "$STAGING"

echo "Archive created: $OUTPUT"
echo "Structure:"
unzip -l "$OUTPUT"
