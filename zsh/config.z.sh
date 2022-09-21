
# ================================================================================= [Config] ===== #

# Load Tmux
if [ "$TMUX" = "" ]; then
    printf "${B_YELLOW}Before we start, do you want to sync your files first (y/n)? ${RESET}"
    read answer
    if [ "$answer" != "${answer#[Yy]}" ] ;then
      start-session
      echo "${GREEN}${2}Files has been synced.${RESET}"
    else
      echo "${YELLOW}${2}Skipping sync.${RESET}"
    fi
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

# Disable power status on spaceship prompt
export SPACESHIP_BATTERY_SHOW=false

# Use nvim as the editor
export VISUAL=nvim
export EDITOR=nvim
