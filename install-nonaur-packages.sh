#!/bin/bash

while IFS= read -r pkg; do sudo pacman -S --noconfirm --needed "$pkg"; done < nonaurpkglist.txt