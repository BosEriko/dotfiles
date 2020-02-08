#!/usr/bin/env sh

# Install Homebrew (https://brew.sh/)
brew help || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install packages using Homebrew (https://brew.sh/)
brew install antigen
brew install chrome-cli
brew install cmake
brew install figlet
brew install fzf
brew install git-flow
brew install htop
brew install hub
brew install koekeishiya/formulae/yabai
brew install links
brew install neovim
brew install node
brew install pastel
brew install python3
brew install ranger
brew install rbenv
brew install sl
brew install terminal-notifier
brew install tmux
brew install tree
brew install yarn
brew install zsh
brew cask install beaker-browser
brew cask install brave-browser
brew cask install figma
brew cask install firefox
brew cask install google-chrome
brew cask install graphiql
brew cask install hyper
brew cask install keycastr
brew cask install motrix
brew cask install typora
brew cask install vscodium
brew install php@7.3; brew install libidn2; brew install libpsl;
brew tap heroku/brew && brew install heroku
brew tap homebrew/cask-fonts && brew cask install font-fira-code
terminal-notifier -title 'Installing' -message 'Brew apps have been installed.'

# Cleanup for Homebrew (https://brew.sh/)
brew cleanup
terminal-notifier -title 'Installing' -message 'Brew has been cleaned.'

