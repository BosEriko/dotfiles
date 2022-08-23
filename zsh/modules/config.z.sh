
# ================================================================================= [Config] ===== #

# Load Tmux
if [ "$TMUX" = "" ]; then
    tmux attach-session || tmux new -s default
fi

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# History Configuration
HISTFILE="$HOME/.history/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

# Disable Compfix
ZSH_DISABLE_COMPFIX=true

# Source ZSH
source $ZSH/oh-my-zsh.sh

# Use Visual Studio Code as the editor
export VISUAL=code
export EDITOR=code
