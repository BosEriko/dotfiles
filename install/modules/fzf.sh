#!/usr/bin/env sh

# fzf (https://github.com/junegunn/fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo "Installing: fzf has been installed."

# fzf Git (https://github.com/junegunn/fzf-git.sh)
git clone https://github.com/junegunn/fzf-git.sh.git ~/.fzf-git
echo "Installing: fzf-git has been installedk"
