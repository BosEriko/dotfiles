#!/usr/bin/env sh

sudo apt update -y && sudo apt upgrade -y                                                           # Update and upgrade Ubuntu
sudo apt install -y stow                                                                            # GNU Stow is a symlink farm manager (https://www.gnu.org/software/stow/)
sudo apt install -y zsh                                                                             # Zsh is a shell designed for interactive use (http://www.zsh.org/)
sudo apt install -y nodejs                                                                          # Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine (https://nodejs.org/en/)
sudo apt install -y npm                                                                             # Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine (https://nodejs.org/en/)
sudo apt install -y rbenv                                                                           # Groom your app’s Ruby environment (https://github.com/rbenv/rbenv)
sudo apt install -y zsh-antigen                                                                     # The plugin manager for zsh (https://github.com/zsh-users/antigen)
sudo apt install -y cmatrix                                                                         # Terminal based "The Matrix" like implementation (https://github.com/abishekvashok/cmatrix)
sudo apt install -y cowsay                                                                          # Let the cow talk (https://github.com/schacon/cowsay)
sudo apt install -y figlet                                                                          # FIGlet is a program for making large letters out of ordinary text (http://www.figlet.org/)
sudo apt install -y fortune                                                                         # Fortune CLI (https://gist.github.com/zlorb/4a3eff8981fcec8ca1c7)
sudo apt install -y git-flow                                                                        # Git workflow (https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
sudo apt install -y lolcat                                                                          # Rainbows and unicorns (https://github.com/busyloop/lolcat)
sudo apt install -y sl                                                                              # SL(1): Cure your bad habit of mistyping (https://github.com/mtoyoda/sl)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0                       # GitHub’s official command line tool (https://github.com/cli/cli)
sudo apt-add-repository https://cli.github.com/packages                                             # GitHub’s official command line tool (https://github.com/cli/cli)
sudo apt install -y gh                                                                              # GitHub’s official command line tool (https://github.com/cli/cli)

echo "Installing: Apt apps have been installed."
