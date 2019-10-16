#!/bin/sh

# .zshrc
rm -rf ~/.zshrc
cat ~/dotfiles/zsh/config.z.sh      \
    ~/dotfiles/zsh/plugins.z.sh     \
    ~/dotfiles/zsh/vim.z.sh         \
    ~/dotfiles/zsh/hotkeys.z.sh     \
    ~/dotfiles/zsh/dir.z.sh         \
    ~/dotfiles/zsh/alias.z.sh       \
    ~/dotfiles/zsh/docker.z.sh      \
    ~/dotfiles/zsh/tmux.z.sh        \
    ~/dotfiles/zsh/projects.z.sh    \
    ~/dotfiles/zsh/ops.z.sh         \
    ~/dotfiles/zsh/fzf.z.sh         \
    ~/dotfiles/zsh/nvm.z.sh         \
    ~/dotfiles/zsh/rvm.z.sh         \
    ~/dotfiles/zsh/flutter.z.sh     \
    ~/dotfiles/zsh/rust.z.sh        \
    ~/dotfiles/zsh/composer.z.sh    \
    ~/dotfiles/zsh/git.z.sh         \
    ~/dotfiles/zsh/personal.z.sh    \
    > ~/.zshrc
terminal-notifier -title 'Generating' -message 'The .zshrc file has been generated.'

# .tmux.conf
rm ~/.tmux.conf
cat ~/dotfiles/tmux/config.tmux.sh  \
    ~/dotfiles/tmux/hotkeys.tmux.sh \
    ~/dotfiles/tmux/theme.tmux.sh   \
    > ~/.tmux.conf
terminal-notifier -title 'Generating' -message 'The .tmux.conf file has been generated.'

# init.vim
rm ~/.config/nvim/init.vim || mkdir -p ~/.config/nvim
cat ~/dotfiles/vim/plugins.vim      \
    ~/dotfiles/vim/config.vim       \
    ~/dotfiles/vim/theme.vim        \
    ~/dotfiles/vim/hotkeys.vim      \
    > ~/.config/nvim/init.vim
terminal-notifier -title 'Generating' -message 'The init.vim file has been generated.'

