#!/usr/bin/env sh

# Install the config
# =====> Stow config
rm ~/.gitconfig ~/.tmux.conf ~/.zshrc
(cd ~/.files && stow config)
echo "Installing: Dotfiles have been linked."
