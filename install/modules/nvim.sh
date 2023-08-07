#!/usr/bin/env sh

# Neovim is a project that seeks to aggressively refactor Vim (https://github.com/neovim/neovim)
sudo apt remove neovim -y
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
