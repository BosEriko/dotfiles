#!/usr/bin/env sh

rm ~/.tmux.conf
cat ~/.files/tmux/modules/config.tmux.sh  \
    ~/.files/tmux/modules/hotkeys.tmux.sh \
    ~/.files/tmux/modules/theme.tmux.sh   \
    > ~/.tmux.conf
echo "Generating: The .tmux.conf file has been generated."
