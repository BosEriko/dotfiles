
# ================================================================================= [Config] ===== #

# Load Tmux
if [ "$TMUX" = "" ]; then
  tmux attach-session || tmux new -s default
fi

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# History Configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

# Source ZSH
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# Source sbin Brew
export PATH="$(brew --prefix)/sbin:$PATH"

# Set Neovim as the default shell editor
export EDITOR=/usr/local/bin/nvim

