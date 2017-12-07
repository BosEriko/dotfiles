# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current theme
ZSH_THEME="bira"

# Sources
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# TMUX Alias
alias tns="tmux new-session -s"
alias tas="tmux attach-session -t"
alias tks="tmux kill-server"

# Shutdown/Restart Alias
alias goodbye="sudo shutdown -h now"
alias see-you-again="sudo shutdown -r now"

# Show SSH Key Alias
alias my-ssh-key="cat ~/.ssh/id_rsa.pub"

# Start Localhost Alias
alias start-localhost="python -m SimpleHTTPServer"

# Start Ngrok Alias
alias start-ngrok="ngrok http --region=ap"

# Directory Alias
alias work-folder="cd ~/Documents/Codes/Work"
alias personal-folder="cd ~/Documents/Codes/Personal"
alias dotfiles-folder="cd ~/dotfiles"

# Party Tricks Alias
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

# Back Directory Alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Memory Sizes Alias
alias df='df -h'
alias du='du -h -c'

# Diskspace Alias
alias checkdisk='pydf'

# Clean Trash Alias
alias clearbin="rm -rf ~/.local/share/Trash/*"

# Npm Alias
alias npm-list="npm list -g --depth=0"
alias npm-outdated="npm outdated -g --depth=0"
alias npm-update="npm update -g"

# Google Chrome Alias
alias gc="google-chrome"

# Google Cloud VM Instance SSH Alias
alias ssh-cloud="gcloud compute ssh cloud-ubuntu"
