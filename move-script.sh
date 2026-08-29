#!/bin/bash

shopt -s nullglob

# Create an array of image file paths
images=(~/Downloads/*.{jpg,jpeg,png,gif})

# Check if the array is empty using the array count (#)
if [ ${#images[@]} -eq 0 ]
then
    echo 'no pictures in ~/Downloads/'
else
    # Loop over the contents of the array, using quotes for safety
    for file in "${images[@]}"
    do
      mv "$file" ~/Pictures/
      # Use $() for command substitution; $(basename "$file")
      echo $(basename "$file") has been moved to ~/Pictures/
    done
fi


mp4Files=(~/Downloads/*.{mp4,mov,avi,mkv})

# Check if the array is empty using the array count (#)
if [ ${#mp4Files[@]} -eq 0 ]
then
    echo "no mp4 files in ~/Downloads/"
else
    # Loop over the contents of the array, using quotes for safety
    for file in "${mp4Files[@]}"
    do
      mv "$file" ~/Videos
      echo $(basename "$file") has been moved to ~/Videos/
    done
fi


svg=(~/Downloads/*.{svg,ico})

if [ ${#svg[@]} -eq 0 ]
then
    echo "no svg/ico files in ~/Downloads/"
else
    mkdir -p ~/Pictures/icons
    for file in "${svg[@]}"
    do
      mv "$file" ~/Pictures/icons/
      echo $(basename "$file") has been moved to ~/Pictures/icons/
    done
fi


audio=(~/Downloads/*.{mp3,aac,wav,m4a})

if [ ${#audio[@]} -eq 0 ]
then
    echo "no audio files in ~/Downloads/"
else
    for file in "${audio[@]}"
    do
      mv "$file" ~/Music
      echo $(basename "$file") has been moved to ~/Music/
    done
fi
