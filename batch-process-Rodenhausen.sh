#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    wordcount="$(wc -w "${f}" | cut -f1 -d" ")"
    echo "Processing $f file..."
    echo "$SIZE"
    echo "$wordcount"
  fi
done
