#!/bin/bash

set -u

THIS_DIR=$(pwd)
SKIP_DIRS=(".git", ".gitmodules", ".gitignore")

echo "---start setup---"
for f in .??*; do
    if [[ " ${SKIP_DIRS[*]} " == *"$f"* ]]; then
        echo skipping $f
        continue
    fi
    ln -snfv $THIS_DIR/$f ~/
done
echo "---finish setup---"
