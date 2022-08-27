#!/usr/bin/env sh

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Installing: oh-my-zsh has been installed."

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh
echo "Installing: ZSH has been set as the default shell."

# Install antigen (https://github.com/zsh-users/antigen)
sudo curl -o /usr/share/zsh-antigen/antigen.zsh -sL git.io/antigen
echo "Installing: Antigen has been installed"
