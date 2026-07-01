#!/bin/bash

pacman -Qen | awk '{print $1}' > nonaurpkglist.txt
pacman -Qem | awk '{print $1}' > aurpkglist.txt