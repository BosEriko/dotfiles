
# ================================================================================= [Config] ===== #

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# History Configuration
HISTFILE="$HOME/.history/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

# Disable Compfix
ZSH_DISABLE_COMPFIX=true

# Keep same directory on new pane/tab (Windows Terminal)
keep_current_path() {
    printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)

# Source ZSH
source $ZSH/oh-my-zsh.sh
