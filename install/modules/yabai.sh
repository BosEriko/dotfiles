#!/usr/bin/env sh

# Install Yabai (https://github.com/koekeishiya/yabai)
sudo yabai --install-sa
brew services start yabai
killall Dock

# Create a config file (https://github.com/koekeishiya/yabai/wiki/Configuration#configuration-file)
touch ~/.yabairc
chmod +x ~/.yabairc

