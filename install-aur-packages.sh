#!/bin/bash

while IFS= read -r pkg; do
    yay -S \
        --noconfirm \
        --needed \
        --answerclean None \
        --nodiffmenu \
        --noeditmenu \
        --noupgrademenu \
        "$pkg"
done < aurpkglist.txt