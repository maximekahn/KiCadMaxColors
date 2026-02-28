#!/bin/bash
# Script to create the ZIP archive compatible with KiCad PCM
# IMPORTANT: metadata.json must be at the ROOT of the archive

cd "$(dirname "$0")"
OUTPUT="${1:-./build/KiCadMaxColors.zip}"

# Remove the old archive
rm -f "$OUTPUT"

# Create the ZIP with the correct structure (files at the root of the archive)
zip -r "$OUTPUT" metadata.json colors/KiCadMaxColors.json
[ -f resources/icon.png ] && zip -r "$OUTPUT" resources/icon.png

echo "Archive created: $OUTPUT"
echo "Structure:"
unzip -l "$OUTPUT"
