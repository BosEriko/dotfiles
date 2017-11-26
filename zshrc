# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current theme
ZSH_THEME="bira"

# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# Alias for most used commands
alias gst="git status"
alias gsh="git stash"
alias gdi="git diff"
alias gad="git add"
alias gco="git commit -m"
alias gca="git commit -am"
alias gpo="git push origin"
alias gpu="git push"
alias gpl="git pull origin"
alias gpi="git pull"
alias gch="git checkout"
alias gbr="git branch"
alias glo="git log"
alias tns="tmux new-session -s"
alias tas="tmux attach-session -t"
alias tks="tmux kill-server"
alias cle="clear"

# Alias to shutdown/restart
alias goodbye="sudo shutdown -h now"
alias seeyouagain="sudo shutdown -r now"

# Alias to start a python localhost
alias locserv="python -m SimpleHTTPServer"

# Alias for ngrok
alias start-ngrok="ngrok http --region=ap"

# Alias for programming directories
alias work-folder="cd ~/Documents/Codes/Work"
alias personal-folder="cd ~/Documents/Codes/Personal"
alias dotfiles-folder="cd ~/dotfiles"

# Party tricks alias
alias party1="aafire"
alias party2="cmatrix"
alias party3="figlet"

# Games Alias
alias game1="bastet"
alias game2="ninvaders"
alias game3="pacman4console"
alias game4="nsnake"
alias game5="greed"
alias game6="atc"
alias game7="backgammon"
alias game8="moon-buggy"
alias game9="./2048"
alias game10="ssh sshtron.zachlatta.com"
alias game11="zangband"
alias game12="nethack-console"

# Back directory alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Check memory sizes
alias df='df -h'
alias du='du -h -c'

# Clean trash from Terminal
alias clearbin="rm -rf ~/.local/share/Trash/*"

# List all node packages installed
alias npm-list="npm list -g --depth=0"
