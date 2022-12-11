#!/bin/bash

# Set the directory to search for HTML files
dir="./"

# Find all HTML files in the specified directory
files=$(find $dir -type f -name "*.html")

# Loop through the list of files
for file in $files; do
    # echo "s/<title>.*<\/title>/<title>$filename<\/title>/g $file"
  # Get the filename without the directory or file extension
  filename=$(basename "$file" .html)

  # Replace the title tag with the filename
  sed -i "s/<title>.*<\/title>/<title>$filename<\/title>/g" $file
done
