#!/usr/bin/env sh

# Update and Upgrade apt
sudo apt update -y && sudo apt upgrade -y                                                           # Update and upgrade Ubuntu

# Install packages
sudo apt install -y stow                                                                            # GNU Stow is a symlink farm manager (https://www.gnu.org/software/stow/)
sudo apt install -y ranger                                                                          # A VIM-inspired filemanager for the console (https://github.com/ranger/ranger)
sudo apt install -y zsh                                                                             # Zsh is a shell designed for interactive use (http://www.zsh.org/)
sudo apt install -y rbenv                                                                           # Groom your app’s Ruby environment (https://github.com/rbenv/rbenv)
sudo apt install -y cmatrix                                                                         # Terminal based "The Matrix" like implementation (https://github.com/abishekvashok/cmatrix)
sudo apt install -y cowsay                                                                          # Let the cow talk (https://github.com/schacon/cowsay)
sudo apt install -y figlet                                                                          # FIGlet is a program for making large letters out of ordinary text (http://www.figlet.org/)
sudo apt install -y fortune                                                                         # Fortune CLI (https://gist.github.com/zlorb/4a3eff8981fcec8ca1c7)
sudo apt install -y git-flow                                                                        # Git workflow (https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
sudo apt install -y sl                                                                              # SL(1): Cure your bad habit of mistyping (https://github.com/mtoyoda/sl)
sudo apt install -y ffmpeg                                                                          # FFmpeg is a collection of libraries and tools to process multimedia content (https://github.com/FFmpeg/FFmpeg)

# A cli to browse and watch anime. This tool scrapes the site gogoanime. (https://github.com/pystardust/ani-cli)
wget -qO- https://Wiener234.github.io/ani-cli-ppa/KEY.gpg | sudo tee /etc/apt/trusted.gpg.d/ani-cli.asc
wget -qO- https://Wiener234.github.io/ani-cli-ppa/ani-cli-debian.list | sudo tee /etc/apt/sources.list.d/ani-cli-debian.list
sudo apt install ani-cli

# Python is an interpreted, interactive, object-oriented programming language (https://www.python.org/)
sudo apt install -y python3-pip
sudo apt install -y python-is-python3

# Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine (https://nodejs.org/en/)
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs

# GitHub’s official command line tool (https://github.com/cli/cli)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt install -y gh

echo "Installing: Apt apps have been installed."
