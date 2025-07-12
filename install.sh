#!/bin/bash

# This script installs all .otf and .ttf fonts from the current repository
# to the user's local font directory (~/.local/share/fonts).

# Destination directory for the fonts
FONT_DIR="$HOME/.local/share/fonts"

# 1. Create the font directory if it doesn't exist
echo "Creating font directory at $FONT_DIR..."
mkdir -p "$FONT_DIR"

# 2. Find and copy all font files
echo "Finding and copying all .otf and .ttf font files..."
find . -type f \( -name "*.otf" -o -name "*.ttf" \) -print0 | while IFS= read -r -d $'\0' file; do
  echo "Installing $(basename "$file")..."
  cp "$file" "$FONT_DIR/"
done

# 3. Update the font cache
echo "Updating font cache..."
fc-cache -f -v

echo "All fonts have been installed successfully!"
