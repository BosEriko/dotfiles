#!/usr/bin/env sh

# Install the config
rm -rf ~/.config/nvim/* || mkdir -p ~/.config/nvim
rm ~/.gitconfig ~/.tmux.conf ~/.zshrc
(cd ~/.files && stow config)
echo "Installing: Dotfiles have been linked."
