#!/bin/bash
cd "$(dirname "$0")"

echo "Converting Moving:Mourning.HEIC..."

# Convert using sips (built-in macOS tool)
sips -s format jpeg -Z 1800 "Moving:Mourning.HEIC" \
     --out "images/2024/Moving-Mourning - 2024 - Oil and charcoal on linen - 178x178cm.jpg"

# Also make a thumbnail
sips -s format jpeg -Z 800 "Moving:Mourning.HEIC" \
     --out "images/thumbs/2024/Moving-Mourning - 2024 - Oil and charcoal on linen - 178x178cm.jpg"

echo "Done! Moving-Mourning image updated."
echo "Press Enter to close."
read
