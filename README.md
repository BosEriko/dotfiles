# Dotfiles
## Dependencies
- [Git](https://git-scm.com)
- [Z shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [tmux](https://github.com/tmux/tmux/wiki)
- [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
- [Tmux Themepack](https://github.com/jimeh/tmux-themepack)
- [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
- [fzf](https://github.com/junegunn/fzf)

## Installation

    ~/dotfiles/install.sh
    git clone git@github.com:BosEriko/dotfiles.git ~/dotfiles
    brew install fzf && $(brew --prefix)/opt/fzf/install
    brew install ack
    brew install figlet
    brew install zsh-autosuggestions
    rm ~/.gitconfig && ln -s ~/dotfiles/gitconfig ~/.gitconfig
    rm ~/.zshrc && ln -s ~/dotfiles/zshrc ~/.zshrc
    rm ~/.tmux.conf && ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    rm ~/.vimrc && ln -s ~/dotfiles/vimrc ~/.vimrc
    rm ~/.profile && ln -s ~/dotfiles/profile ~/.profile

------

## Call to action
If you want to share some ideas you can email me at mail@boseriko.com.
