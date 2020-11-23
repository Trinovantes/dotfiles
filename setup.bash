#!/usr/bin/env bash

LINKS_DIR='./links'
FILES=$(find $LINKS_DIR -type f)

for filename in $FILES; do
    echo Linking $(realpath $filename)
    ln -sf $(realpath $filename) ~
done
