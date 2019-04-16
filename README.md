# Dotfiles

I mainly use VSCode now so this is more of a personal editor settings rather than a dotfiles folder.

## Dependencies
- [Git](https://git-scm.com)
- [Z shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [fzf](https://github.com/junegunn/fzf)
- [Visual Studio Code](https://code.visualstudio.com/)

## Installation

    git clone git@github.com:BosEriko/dotfiles.git ~/dotfiles
    rm ~/.gitconfig && ln -s ~/dotfiles/gitconfig ~/.gitconfig
    rm ~/.zshrc && ln -s ~/dotfiles/zshrc ~/.zshrc
    rm ~/.profile && ln -s ~/dotfiles/profile ~/.profile
    rm ~/.vimrc && ln -s ~/dotfiles/Vim/vimrc ~/.vimrc
    rm ~/Library/Application\ Support/Code/User/projects.json && ln -s ~/dotfiles/VSCode/projects.json ~/Library/Application\ Support/Code/User/projects.json
    rm ~/Library/Application\ Support/Code/User/settings.json && ln -s ~/dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
    rm ~/Library/Application\ Support/Code/User/keybindings.json && ln -s ~/dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
    bash ~/dotfiles/extensions.sh

_Remember to install [Font Ligatures](https://github.com/tonsky/FiraCode) as well_

------

## Visual Studio Code Custom Hotkeys (Mac)

    bos -vs [general] [search] [explorer] [toggle] [terminal] [fold] [editor] [extensions] [vim]

------

## Call to action
If you want to share some ideas you can email me at mail@boseriko.com.
