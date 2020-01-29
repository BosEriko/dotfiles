#!/usr/bin/env sh

# Install Karabiner Elements (https://github.com/tekezo/Karabiner-Elements)
git clone https://github.com/tekezo/Karabiner-Elements.git ~/karabiner-elements
(cd ~/karabiner-elements && make package)
rm -rf ~/karabiner-elements
terminal-notifier -title 'Installing' -message 'Karabiner Elements has been installed.'

