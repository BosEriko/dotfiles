#!/bin/sh

rm ~/.config/nvim/init.vim || mkdir -p ~/.config/nvim
cat ~/dotfiles/vim/plugins.vim  \
    ~/dotfiles/vim/config.vim   \
    ~/dotfiles/vim/hotkeys.vim  \
    > ~/.config/nvim/init.vim
