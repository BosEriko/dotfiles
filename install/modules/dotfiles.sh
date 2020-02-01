#!/usr/bin/env sh

# Install the dotfiles
# =====> .gitconfig
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
# =====> .hyper.js
rm ~/.hyper.js
ln -s ~/dotfiles/hyper.js ~/.hyper.js
# =====> .yabairc (https://github.com/koekeishiya/yabai/wiki/Configuration#configuration-file)
rm ~/.yabairc
ln -s ~/dotfiles/yabairc ~/.yabairc
# =====> VSCodium Settings
rm ~/Library/Application\ Support/VSCodium/User/settings.json
ln -s ~/dotfiles/vscodium/settings.json ~/Library/Application\ Support/VSCodium/User/settings.json
# =====> VSCodium Keybindings
rm ~/Library/Application\ Support/VSCodium/User/keybindings.json
ln -s ~/dotfiles/vscodium/keybindings.json ~/Library/Application\ Support/VSCodium/User/keybindings.json
# =====> .zsh_history
rm ~/.zsh_history
ln -s ~/dotfiles/zsh/history ~/.zsh_history
# =====> Generate .zshrc, .tmux.conf and init.vim
~/dotfiles/generate.sh
# Notify the user
terminal-notifier -title 'Installing' -message 'Dotfiles have been linked.'

