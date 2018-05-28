# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Current theme
ZSH_THEME="geoffgarside"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

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
alias ssh-cloud="echo 'ssh -i [PATH_TO_PRIVATE_KEY] [USERNAME]@[EXTERNAL_IP_ADDRESS]'"

# External IP Alias
alias external-ip="curl ipinfo.io/ip"

# FZF Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# RVM
eval "$(rbenv init -)"
