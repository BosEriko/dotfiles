#!/bin/sh

rm ~/.config/nvim/init.vim || mkdir -p ~/.config/nvim
cat ~/dotfiles/vim/modules/plugins.vim      \
    ~/dotfiles/vim/modules/config.vim       \
    ~/dotfiles/vim/modules/theme.vim        \
    ~/dotfiles/vim/modules/hotkeys.vim      \
    > ~/.config/nvim/init.vim
terminal-notifier -title 'Generating' -message 'The init.vim file has been generated.'

