#!/usr/bin/env sh

~/dotfiles/install/modules/brew.sh
~/dotfiles/install/modules/plug.sh
~/dotfiles/install/modules/rust.sh
~/dotfiles/install/modules/composer.sh
~/dotfiles/install/modules/ranger-icon.sh
~/dotfiles/install/modules/laravel.sh
~/dotfiles/install/modules/node.sh

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
rbenv install 2.6.5
rbenv global 2.6.5
rbenv rehash
terminal-notifier -title 'Installing' -message 'rbenv has been initialized.'

# Install packages using Gem (https://rubygems.org/)
gem install befr
gem install bundler
gem install iStats
gem install neovim
gem install rails
terminal-notifier -title 'Installing' -message 'Gem apps have been installed.'

# Install packages using pip (https://www.python.org)
pip3 install --user --upgrade pynvim
terminal-notifier -title 'Installing' -message 'Pip apps have been installed.'

# Make the directories for Personal/Work
mkdir -p ~/Documents/Codes/Work ~/Documents/Codes/Personal
terminal-notifier -title 'Installing' -message 'Work and Personal folder have been created.'

# Make the directory for Vim Workspaces
mkdir -p ~/.vim/workspace
terminal-notifier -title 'Installing' -message 'Work and Personal folder have been created.'

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
terminal-notifier -title 'Installing' -message 'oh-my-zsh has been installed.'

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh
terminal-notifier -title 'Installing' -message 'ZSH has been set as the default shell.'

# Generate .zshenv to avoid errors on oh-my-zsh
touch ~/.zshenv
terminal-notifier -title 'Installing' -message '.zshenv has been generated to avoid errors on oh-my-zsh.'

# Install Karabiner Elements (https://github.com/tekezo/Karabiner-Elements)
git clone https://github.com/tekezo/Karabiner-Elements.git ~/karabiner-elements
(cd ~/karabiner-elements && make package)
rm -rf ~/karabiner-elements
terminal-notifier -title 'Installing' -message 'Karabiner Elements has been installed.'

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
