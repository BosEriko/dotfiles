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
~/dotfiles/install/modules/nerd-font.sh
~/dotfiles/install/modules/dotfiles.sh
~/dotfiles/install/modules/nvim.sh
~/dotfiles/install/modules/key-repeat.sh
~/dotfiles/install/modules/vscodium.sh

# Generate SSH Key
ssh-keygen -C bos.eriko@gmail.com
terminal-notifier -title 'Installing' -message 'SSH Key has been generated.'
