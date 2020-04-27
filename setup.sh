#!/bin/bash

echo "Linking dotfiles..."

SOURCE=~/dotfiles/codium/settings.json
TARGET=~/Library/Application\ Support/VSCodium/User/settings.json
if test -f "$TARGET"; then
  echo "$TARGET exists. Backing up..."
  mv "$TARGET" "$TARGET.bak"
fi
ln -s $SOURCE "$TARGET"

SOURCE=~/dotfiles/fish
TARGET=~/.config/fish
if test -f "$TARGET"; then
  echo "$TARGET exists. Backing up..."
  mv "$TARGET" "$TARGET.bak"
fi
ln -s $SOURCE "$TARGET"
