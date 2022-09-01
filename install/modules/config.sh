#!/usr/bin/env sh

# Install the config
# =====> Stow config
rm ~/.config/nvim/init.lua ~/.config/nvim/init.vim || mkdir -p ~/.config/nvim
rm ~/.gitconfig ~/.tmux.conf ~/.zshrc
(cd ~/.files && stow config)
echo "Installing: Dotfiles have been linked."
