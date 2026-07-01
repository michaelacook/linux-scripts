#!/bin/bash

while IFS= read -r pkg; do
    yay -S \
        --noconfirm \
        --needed \
        --nocleanmenu \
        --nodiffmenu \
        --noeditmenu \
        --noupgrademenu \
        "$pkg"
done < aurpkglist.txt