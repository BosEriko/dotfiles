#!/usr/bin/env sh

rm ~/.tmux.conf
cat ~/.dotfiles/tmux/modules/config.tmux.sh  \
    ~/.dotfiles/tmux/modules/hotkeys.tmux.sh \
    ~/.dotfiles/tmux/modules/theme.tmux.sh   \
    > ~/.tmux.conf
echo "Generating: The .tmux.conf file has been generated."
