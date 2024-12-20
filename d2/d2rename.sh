#!/bin/bash
FILES=$(ls *.jpg)
read -p "Start new names with number: " NUMBER
for FILE in $FILES; do
  printf "Renaming $FILE to Screenshot%03d.jpg\n" "$NUMBER"
  mv $FILE `printf %s%03d%s Screenshot $NUMBER .jpg`
  ((NUMBER++))
done