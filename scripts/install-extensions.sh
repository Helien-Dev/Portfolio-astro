#!/bin/bash

DIR="$(dirname "$0")"
FILE="$DIR/extensions.txt"

if [ -f "$FILE" ]; then
    while read -r extension; do
        echo "Installing $extension..."
        code --install-extension "$extension"
    done < "$FILE"
else
    echo "extensions.txt not found"
fi
