#!/bin/sh

rm ~/.tmux.conf
cat ~/dotfiles/tmux/plugins.tmux.sh \
    ~/dotfiles/tmux/config.tmux.sh  \
    ~/dotfiles/tmux/theme.tmux.sh   \
    ~/dotfiles/tmux/hotkeys.tmux.sh \
    > ~/.tmux.conf
