#!/bin/sh

rm ~/.tmux.conf
cat ~/dotfiles/tmux/config.tmux.sh  \
    ~/dotfiles/tmux/hotkeys.tmux.sh \
    ~/dotfiles/tmux/theme.tmux.sh   \
    > ~/.tmux.conf
