#!/usr/bin/env sh

# Install Homebrew (https://brew.sh/)
brew help || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install packages using Homebrew (https://brew.sh/)
brew install antigen                                              # The plugin manager for zsh (https://github.com/zsh-users/antigen)
brew install cmake                                                # CMake is an open-source, cross-platform family of tools designed to build, test and package software (https://cmake.org/)
brew install cmatrix                                              # Terminal based "The Matrix" like implementation (https://github.com/abishekvashok/cmatrix)
brew install cowsay                                               # Let the cow talk (https://github.com/schacon/cowsay)
brew install figlet                                               # FIGlet is a program for making large letters out of ordinary text (http://www.figlet.org/)
brew install fortune                                              # Fortune CLI (https://gist.github.com/zlorb/4a3eff8981fcec8ca1c7)
brew install fzf                                                  # A command-line fuzzy finder (https://github.com/junegunn/fzf)
brew install git-flow                                             # Git workflow (https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
brew install htop                                                 # htop is an interactive text-mode process viewer for Unix systems. It aims to be a better 'top' (https://github.com/hishamhm/htop)
brew install hub                                                  # A command-line tool that makes git easier to use with GitHub (https://github.com/github/hub)
brew install jq                                                   # Command-line JSON processor (https://github.com/stedolan/jq)
brew install koekeishiya/formulae/skhd                            # Simple hotkey daemon for macOS (https://github.com/koekeishiya/skhd)
brew install koekeishiya/formulae/yabai                           # A tiling window manager for macOS based on binary space partitioning (https://github.com/koekeishiya/yabai)
brew install links                                                # Terminal based browser (http://links.twibright.com/)
brew install neovim                                               # Vim-fork focused on extensibility and usability (https://github.com/neovim/neovim)
brew install node                                                 # Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine (https://nodejs.org/en/)
brew install pastel                                               # A command-line tool to generate, analyze, convert and manipulate colors (https://github.com/sharkdp/pastel)
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

