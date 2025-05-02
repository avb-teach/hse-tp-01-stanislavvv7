#!/bin/bash
# Источники справки:
# https://man7.org/linux/man-pages/man1/find.1.html
# https://man7.org/linux/man-pages/man1/cp.1.html
# https://man7.org/linux/man-pages/man1/mkdir.1.html
# https://www.gnu.org/software/bash/manual/bash.html#index-set

set -e

if [ "$#" -lt 2 ]; then
  exit 1
fi

input="$1"
output="$2"

if [ ! -d "$input" ]; then
  exit 1
fi

mkdir -p "$output"

find "$input" -type f | while read line
do
  cp "$line" "$output/"
done