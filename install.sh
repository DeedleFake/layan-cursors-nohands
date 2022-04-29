#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

# ensure the destination exists
mkdir -p "$DEST_DIR"

#rsync -a --delete dist/ "$DEST_DIR"/layan-cursors-nohands
rsync -a --delete dist-border/ "$DEST_DIR"/layan-border-cursors-nohands
#rsync -a --delete dist-white/ "$DEST_DIR"/layan-white-cursors-nohands

echo "Finished..."
