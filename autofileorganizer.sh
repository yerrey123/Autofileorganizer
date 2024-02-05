#!/bin/bash

#Source Directory
src_dir="/Users/yeremiareynaldo/Desktop"

#Destination Directory for Screenshots
mkdir -p "/Users/yeremiareynaldo/Desktop/Screenshots"
pictures_dir="/Users/yeremiareynaldo/Desktop/Screenshots"

#Destination Directory for Excel files
mkdir -p "/Users/yeremiareynaldo/Desktop/Excel Files"
excel_dir="/Users/yeremiareynaldo/Desktop/Excel Files"

#Destination Directory for Word files
mkdir -p "/Users/yeremiareynaldo/Desktop/Word Files"
word_dir="/Users/yeremiareynaldo/Desktop/Word Files"

#Destination Directory for PDF files
mkdir -p "/Users/yeremiareynaldo/Desktop/PDFs"
pdf_dir="/Users/yeremiareynaldo/Desktop/PDFs"

# Only search in the source directory without descending into subdirectories
# Use -maxdepth 1 to ensure it only looks at files directly within src_dir

find "$src_dir" -maxdepth 1 -type f -iname "*.png" -exec mv {} "$pictures_dir" \;
find "$src_dir" -maxdepth 1 -type f -iname "*.jpg" -exec mv {} "$pictures_dir" \;
find "$src_dir" -maxdepth 1 -type f -iname "*.jpeg" -exec mv {} "$pictures_dir" \;

find "$src_dir" -maxdepth 1 -type f -iname "*.xlsx" -exec mv {} "$excel_dir" \;

find "$src_dir" -maxdepth 1 -type f -iname "*.docx" -exec mv {} "$word_dir" \;

find "$src_dir" -maxdepth 1 -type f -iname "*.pdf" -exec mv {} "$pdf_dir" \;
