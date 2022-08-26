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

# Pull ZSH history (https://github.com/BosEriko/history)
git clone https://github.com/BosEriko/history.git ~/.history
echo "Installing: ZSH history repository has been pulled."

# Pull Obsidian (https://github.com/BosEriko/obsidian)
git clone --recurse-submodules https://github.com/BosEriko/obsidian.git $STORAGE/Obsidian
echo "Installing: Obsidian repository has been pulled."
