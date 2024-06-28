
# ================================================================================= [Config] ===== #

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

# Disable power status on spaceship prompt
export SPACESHIP_BATTERY_SHOW=false

# Use nano as the editor
export VISUAL=nano
export EDITOR=nano
