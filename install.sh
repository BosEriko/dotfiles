#!/bin/sh
# Install Homebrew (https://brew.sh/)
brew help || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install packages (https://brew.sh/)
brew install fzf
$(brew --prefix)/opt/fzf/install
brew install rbenv
brew install ack
brew install figlet
brew install tmux
brew install htop
brew install vim
brew install zsh
brew install zsh-completions
brew install zsh-autosuggestions
brew install cmake
brew install terminal-notifier
brew cask install hyper

# Cleanup for Homebrew (https://brew.sh/)
brew cleanup

# Make the directories for Personal/Work
mkdir ~/Documents
mkdir ~/Documents/Codes
mkdir ~/Documents/Codes/Work
mkdir ~/Documents/Codes/Personal

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh

# Generate .zshenv to avoid errors on oh-my-zsh
touch ~/.zshenv

# Install Karabiner Elements 12.2.0 (https://github.com/tekezo/Karabiner-Elements)
git clone https://github.com/tekezo/Karabiner-Elements.git ~/karabiner-elements
cd ~/karabiner-elements
make package
cd ~
rm -rf ~/karabiner-elements

# Installing the dotfiles
# =====> .gitconfig
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
# =====> .zshrc
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc
# =====> .tmux.conf
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
# =====> .vimrc
rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc
# =====> .nanorc
rm ~/.nanorc
ln -s ~/dotfiles/nanorc ~/.nanorc
# =====> .profile
rm ~/.profile
ln -s ~/dotfiles/profile ~/.profile
# =====> .hyper.js
rm ~/.hyper.js
ln -s ~/dotfiles/hyper.js ~/.hyper.js
# =====> karabiner.json
mkdir ~/.config
mkdir ~/.config/karabiner
rm ~/.config/karabiner/karabiner.json
ln -s ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json

# Install powerline fonts (https://github.com/powerline/fonts)
git clone https://github.com/powerline/fonts.git ~/powerline-fonts
cd ~/powerline-fonts
./install.sh
cd ~
rm -rf ~/powerline-fonts

# Install Tmux Plugin Manager (https://github.com/tmux-plugins/tpm)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Allow key repeats on Hyper terminal
defaults write co.zeit.hyper ApplePressAndHoldEnabled -bool false

# Install Vundle (https://github.com/VundleVim/Vundle.vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Generate SSH Key
ssh-keygen -t rsa
