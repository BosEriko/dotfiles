#!/usr/bin/env sh

# Pull ZSH history (https://github.com/BosEriko/history)
git clone https://github.com/BosEriko/history.git ~/.history
echo "Installing: ZSH history repository has been pulled."

# Pull Obsidian (https://github.com/BosEriko/obsidian)
git clone --recurse-submodules https://github.com/BosEriko/obsidian.git $STORAGE/Obsidian
echo "Installing: Obsidian repository has been pulled."
