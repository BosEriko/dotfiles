#!/usr/bin/env sh

rm ~/.zshrc
cat ~/dotfiles/zsh/modules/config.z.sh      \
    ~/dotfiles/zsh/modules/plugins.z.sh     \
    ~/dotfiles/zsh/modules/vim.z.sh         \
    ~/dotfiles/zsh/modules/hotkeys.z.sh     \
    ~/dotfiles/zsh/modules/dir.z.sh         \
    ~/dotfiles/zsh/modules/alias.z.sh       \
    ~/dotfiles/zsh/modules/docker.z.sh      \
    ~/dotfiles/zsh/modules/tmux.z.sh        \
    ~/dotfiles/zsh/modules/projects.z.sh    \
    ~/dotfiles/zsh/modules/ops.z.sh         \
    ~/dotfiles/zsh/modules/fzf.z.sh         \
    ~/dotfiles/zsh/modules/nvm.z.sh         \
    ~/dotfiles/zsh/modules/rvm.z.sh         \
    ~/dotfiles/zsh/modules/flutter.z.sh     \
    ~/dotfiles/zsh/modules/rust.z.sh        \
    ~/dotfiles/zsh/modules/composer.z.sh    \
    ~/dotfiles/zsh/modules/git.z.sh         \
    ~/dotfiles/zsh/modules/personal.z.sh    \
    > ~/.zshrc
terminal-notifier -title 'Generating' -message 'The .zshrc file has been generated.'

