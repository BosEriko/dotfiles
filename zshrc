# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current theme
ZSH_THEME="bira"

# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# Alias
alias gst="git status"
alias gsh="git stash"
alias gdi="git diff"
alias gad="git add"
alias gco="git commit -m"
alias gca="git commit -am"
alias gpo="git push origin"
alias gpu="git push"
alias gch="git checkout"
alias tns="tmux new-session -s"
alias tas="tmux attach-session -t"
alias tks="tmux kill-server"
