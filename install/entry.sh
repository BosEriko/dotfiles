#!/usr/bin/env sh

~/dotfiles/install/modules/brew.sh
~/dotfiles/install/modules/plug.sh
~/dotfiles/install/modules/rust.sh
~/dotfiles/install/modules/composer.sh
~/dotfiles/install/modules/ranger-icon.sh
~/dotfiles/install/modules/laravel.sh
~/dotfiles/install/modules/node.sh
~/dotfiles/install/modules/rbenv.sh
~/dotfiles/install/modules/gem.sh
~/dotfiles/install/modules/pip.sh
~/dotfiles/install/modules/mkdir.sh
~/dotfiles/install/modules/zsh.sh
~/dotfiles/install/modules/karabiner.sh

# Install nerd fonts (https://github.com/ryanoasis/nerd-fonts#font-installation)
(cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf)
terminal-notifier -title 'Installing' -message 'Nerd Fonts has been installed.'

# Install the dotfiles
# =====> .gitconfig
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
# =====> .hyper.js
rm ~/.hyper.js
ln -s ~/dotfiles/hyper.js ~/.hyper.js
# =====> VSCodium Settings
rm ~/Library/Application\ Support/VSCodium/User/settings.json
ln -s ~/dotfiles/vscodium/settings.json ~/Library/Application\ Support/VSCodium/User/settings.json
# =====> VSCodium Keybindings
rm ~/Library/Application\ Support/VSCodium/User/keybindings.json
ln -s ~/dotfiles/vscodium/keybindings.json ~/Library/Application\ Support/VSCodium/User/keybindings.json
# =====> Generate .zshrc, .tmux.conf and init.vim
~/dotfiles/generate.sh
# Notify the user
terminal-notifier -title 'Installing' -message 'Dotfiles have been linked.'

# Install Vim Extensions
nvim +PlugInstall +qall
terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'

# Allow key repeats
defaults write -g ApplePressAndHoldEnabled -bool false
terminal-notifier -title 'Installing' -message 'Repeated key press has been enabled.'

# Install VSCodium Extensions
~/dotfiles/vscodium/extensions.sh
terminal-notifier -title 'Installing' -message 'VSCodium Extensions have been installed.'

# Generate SSH Key
ssh-keygen -C bos.eriko@gmail.com
terminal-notifier -title 'Installing' -message 'SSH Key has been generated.'
