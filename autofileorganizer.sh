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

#Find ANY file regardless of case insensitivity match
find "$src_dir" -type f -iname "*.png" -exec mv {} "$pictures_dir" \;

find "$src_dir" -type f -iname "*.xlsx" -exec mv {} "$excel_dir" \;

find "$src_dir" -type f -iname "*.docx" -exec mv {} "$word_dir" \;

find "$src_dir" -type f -iname "*.pdf" -exec mv {} "$pdf_dir" \;