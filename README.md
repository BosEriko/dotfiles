# Dotfiles

Better safe than sorry. A back up of my dotfiles.

## Dependencies
- [Vim](https://www.vim.org)
- [tmux](https://github.com/tmux/tmux)
- [Z shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [fzf](https://github.com/junegunn/fzf)
- [xcape](https://github.com/alols/xcape)

## Installation

    rm -rf .vim
    rm .vimrc
    rm .tmux.conf
    rm .zshrc
    rm .profile

    git clone git@github.com:BosEriko/dotfiles.git
    ln -s dotfiles/vimrc ~/.vimrc
    ln -s dotfiles/tmux.conf ~/.tmux.conf
    ln -s dotfiles/zshrc ~/.zshrc
    ln -s dotfiles/profile ~/.profile

## Note
I switched ctrl and caps lock for easier TMUX navigation. Also, for soft touch of caps lock it works as an esc button for VIM mode toggle. I used [xcape](https://github.com/alols/xcape) to do it.

## Call to action

If you want to share some ideas you can email me at mail@boseriko.com.
