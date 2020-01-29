#!/usr/bin/env sh

# Install nerd fonts (https://github.com/ryanoasis/nerd-fonts#font-installation)
(cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf)
terminal-notifier -title 'Installing' -message 'Nerd Fonts has been installed.'

