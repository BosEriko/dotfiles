#!/usr/bin/env sh

# Install Homebrew (https://brew.sh/)
brew help || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install packages using Homebrew (https://brew.sh/)
brew install antigen                                              # The plugin manager for zsh (https://github.com/zsh-users/antigen)
brew install cmake                                                #
brew install cmatrix                                              # Terminal based "The Matrix" like implementation (https://github.com/abishekvashok/cmatrix)
brew install cowsay                                               # Let the cow talk (https://github.com/schacon/cowsay)
brew install figlet                                               #
brew install fortune                                              #
brew install fzf                                                  #
brew install git-flow                                             #
brew install htop                                                 #
brew install hub                                                  #
brew install jq                                                   #
brew install koekeishiya/formulae/skhd                            #
brew install koekeishiya/formulae/yabai                           #
brew install links                                                #
brew install neovim                                               #
brew install node                                                 #
brew install pastel                                               #
brew install pipes-sh                                             #
brew install python3                                              #
brew install ranger                                               #
brew install rbenv                                                #
brew install sl                                                   #
brew install stow                                                 #
brew install terminal-notifier                                    #
brew install tmux                                                 #
brew install tree                                                 #
brew install yarn                                                 #
brew install zsh                                                  #
brew cask install beaker-browser                                  #
brew cask install brave-browser                                   #
brew cask install figma                                           #
brew cask install firefox                                         #
brew cask install google-chrome                                   #
brew cask install graphiql                                        #
brew cask install hyper                                           #
brew cask install keycastr                                        #
brew cask install motrix                                          #
brew cask install qutebrowser                                     #
brew cask install typora                                          #
brew cask install vscodium                                        #
brew install php@7.3; brew install libidn2; brew install libpsl;  #
brew tap heroku/brew && brew install heroku                       #
brew tap homebrew/cask-fonts && brew cask install font-fira-code  #
terminal-notifier -title 'Installing' -message 'Brew apps have been installed.'

# Cleanup for Homebrew (https://brew.sh/)
brew cleanup
terminal-notifier -title 'Installing' -message 'Brew has been cleaned.'

