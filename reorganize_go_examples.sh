#!/bin/bash

# Script to reorganize Go by Example files into individual directories
# Usage: Run this in your go-by-example directory

echo "🔧 Reorganizing Go examples into separate directories..."

# Loop through all .go files in current directory
for file in *.go; do
    # Skip if no .go files found
    [ -e "$file" ] || continue
    
    # Extract the base name without extension
    basename="${file%.go}"
    
    # Create directory with the same name
    mkdir -p "$basename"
    
    # Move the file into the directory and rename it to main.go
    mv "$file" "$basename/main.go"
    
    echo "✅ Moved $file → $basename/main.go"
done

echo ""
echo "🎉 Done! Your structure now looks like:"
echo ""
ls -d */ | head -5
echo "..."
echo ""
echo "Run examples with: go run 001_hello_world/main.go"
