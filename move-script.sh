#!/bin/bash

shopt -s nullglob

# Create an array of image file paths
images=(~/downloads/*.{jpg,jpeg,png,gif})

# Check if the array is empty using the array count (#)
if [ ${#images[@]} -eq 0 ]
then
    echo 'no pictures in downloads/'
else
    # Loop over the contents of the array, using quotes for safety
    for file in "${images[@]}"
    do
      mv "$file" ~/pictures/
      # Use $() for command substitution; $(basename "$file")
      echo $(basename "$file") has been moved to pictures/
    done
fi


mp4Files=(~/downloads/*.mp4)

# Check if the array is empty using the array count (#)
if [ ${#mp4Files[@]} -eq 0 ]
then
    echo "no mp4 files in downloads/"
else
    # Loop over the contents of the array, using quotes for safety
    for file in "${mp4Files[@]}"
    do
      mv "$file" ~/videos
      echo $(basename "$file") has been moved to videos/
    done
fi


svg=(~/downloads/*.svg)

if [ ${#svg[@]} -eq 0 ]
then
    echo "no svg files in downloads"
else
    # Loop over the contents of the array, using quotes for safety
    for file in ${svg[@]}
    do
      mv "$file" ~/pictures/icons/
      echo $(basename "$file") has been moved to pictures/icons/
    done
fi