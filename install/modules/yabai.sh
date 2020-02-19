#!/usr/bin/env sh

# Install Yabai (https://github.com/koekeishiya/yabai)
sudo yabai --install-sa
brew services start yabai
brew services start skhd
killall Dock

