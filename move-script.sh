#!/bin/bash

if [ -f ~/downloads/*.jpg ]
then
    for file in ~/downloads/*.jpg
    do
      mv "$file" ~/pictures/
      echo $(basename "$file") has been moved to pictures/
    done
else
    echo "no .jpg files in downloads/"
fi

if [ -f ~/downloads/*.svg ]
then
    for file in ~/downloads/*.svg
    do
      mv "$file" ~/pictures/icons/
      echo $(basename "$file") has been moved to pictures/icons/
    done
else
    echo "no .svg files in downloads/"
fi

if [ -f ~/downloads/*.mp4 ]
then
    for file in ~/downloads/*.mp4
    do
      mv "$file" ~/videos/
      echo $(basename "$file") has been moved to videos/
    done
else
    echo "no .mp4 files in downloads/"
fi
