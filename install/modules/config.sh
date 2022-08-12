#!/usr/bin/env sh

# Install the dotfiles
# =====> Stow config
rm ~/.gitconfig
(cd ~/.files && stow config)
# =====> Generate .zshrc
~/.files/generate.sh
# Notify the user
echo "Installing: Dotfiles have been linked."
