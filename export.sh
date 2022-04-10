#!/bin/bash
for file in */source.svg; do
    basename="${file%/*}"
    rm $basename/optimized.svg
    #inkscape $basename/source.svg --export-filename=$basename/s.svg --export-text-to-path
    scour -i $basename/source.svg -o $basename/optimized.svg
    #rm $basename/s.svg
done 
