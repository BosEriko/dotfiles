#!/usr/bin/env sh

# Install Ranger Icons (https://github.com/alexanderjeurissen/ranger_devicons)
git clone https://github.com/alexanderjeurissen/ranger_devicons.git ~/ranger_devicons
cd ~/ranger_devicons
make install
cd ~
rm -rf ~/ranger_devicons
terminal-notifier -title 'Installing' -message 'Ranger Devicons have been installed'

