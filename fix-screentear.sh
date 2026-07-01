#!/bin/bash

# This works specifically for Arch Linux with Intel graphics
# May work for Intel graphics for other systems, no guarantee

CONF_DIR="/etc/X11/xorg.conf.d"
CONF_FILE="$CONF_DIR/20-intel.conf"

if [ ! -d "$CONF_DIR" ]; then
    sudo mkdir -p "$CONF_DIR"
fi

sudo tee "$CONF_FILE" > /dev/null <<'EOF'
Section "Device"
	Identifier "Intel Graphics"
	Driver	"modesetting"
	Option "TearFree" "true"
EndSection
EOF