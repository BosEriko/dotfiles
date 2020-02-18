#!/usr/bin/env sh

# Install the dotfiles
# =====> Stow config
rm ~/.gitconfig ~/.hyper.js ~/.skhdrc ~/.yabairc
(cd ~/.dotfiles && stow config)
# =====> VSCodium Settings
rm ~/Library/Application\ Support/VSCodium/User/settings.json
ln -s ~/.dotfiles/vscodium/settings.json ~/Library/Application\ Support/VSCodium/User/settings.json
# =====> VSCodium Keybindings
rm ~/Library/Application\ Support/VSCodium/User/keybindings.json
ln -s ~/.dotfiles/vscodium/keybindings.json ~/Library/Application\ Support/VSCodium/User/keybindings.json
# =====> Generate .zshrc, .tmux.conf and init.vim
~/.dotfiles/generate.sh
# Notify the user
terminal-notifier -title 'Installing' -message 'Dotfiles have been linked.'

