#!/usr/bin/env sh

# Install NeoVim Extensions
nvim +PlugInstall +qall
terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'

