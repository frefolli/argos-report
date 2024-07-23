#!/bin/bash

for file in $(find . -type f); do
  echo $file
  convert -gravity Center -crop 860x850-20+30 +repage $file ../slides/$file
done
