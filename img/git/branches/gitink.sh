#!/usr/bin/env bash

if [ ! -d "gitink" ]; then
    git clone https://github.com/bast/gitink.git
fi

for file in *.txt; do
    python gitink/gitink.py $file > ${file%txt}svg
done
