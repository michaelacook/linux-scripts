#!/bin/bash

while IFS= read -r pkg; do
    # Skip blank lines and comments
    [[ -z "$pkg" || "$pkg" == \#* ]] && continue

    yay -S \
        --noconfirm \
        --needed \
        --answerclean None \
        --answerdiff None \
        "$pkg"
done < aurpkglist.txt