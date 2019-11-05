#!/bin/sh

rm ~/.tmux.conf
cat ~/dotfiles/tmux/modules/config.tmux.sh  \
    ~/dotfiles/tmux/modules/hotkeys.tmux.sh \
    ~/dotfiles/tmux/modules/theme.tmux.sh   \
    > ~/.tmux.conf
terminal-notifier -title 'Generating' -message 'The .tmux.conf file has been generated.'

