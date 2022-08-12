#!/usr/bin/env sh

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Installing: oh-my-zsh has been installed."

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh
echo "Installing: ZSH has been set as the default shell."

# Pull ZSH history (https://github.com/BosEriko/history)
git clone https://github.com/BosEriko/history.git ~/.history
echo "Installing: ZSH history repository has been pulled."
