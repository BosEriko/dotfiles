# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="garyblessington"

# History Configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# Source ZSH
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# ZSH Autosuggest
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh