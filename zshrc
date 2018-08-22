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
alias gc='open -a "Google Chrome"'

# Google Cloud VM Instance SSH Alias
alias ssh-cloud="echo 'ssh -i [PATH_TO_PRIVATE_KEY] [USERNAME]@[EXTERNAL_IP_ADDRESS]'"

# External IP Alias
alias external-ip="curl ipinfo.io/ip"

# Restart ZSH
alias restart-zsh="source ~/.zshrc"

# Talkpush Alias
alias tp-help="figlet 'Talkpush Helpers' && echo -e '\nThis is a helper showing all your Talkpush commands.
\n
\033[1mCommands                    Description\033[0m
tp-start-app                Start Application
tp-start-sidekiq            Start Sidekiq
tp-start-mailhog            Start Mailhog
tp-start-shell              Start Shell
tp-start-console            Start Console
tp-show-logs                Show Logs
tp-creds-app                Application Credentials
tp-creds-staging            Staging Credentials
tp-creds-bug                Bug Tracking Credentials
tp-remind-mina              Mina Instructions
tp-remind-socket-error      Socket Error Instructions
tp-setup-project            Setup Project for the first time
tp-fix-subclass-error       Fix SubClass error
'"
alias tp-start-app="docker-compose stop && docker-compose rm -f && docker-compose up -d talkpush && /usr/bin/open -a '/Applications/Google Chrome.app' 'http://lvh.me/' && bin/webpack-watcher"
alias tp-start-sidekiq="bundle exec sidekiq -C ./config/sidekiq.yml"
alias tp-start-mailhog="docker-compose up -d mailhog && /usr/bin/open -a '/Applications/Google Chrome.app' 'http://localhost:8025/'"
alias tp-start-shell="docker-compose exec talkpush sh"
alias tp-start-console="docker-compose exec talkpush sh -c 'rails c'"
alias tp-show-logs="docker attach talkpush"
alias tp-creds-app="echo -e 'Link: localhost\nUsername: dev@talkpush.com\nPassword: talkpush'"
alias tp-creds-staging="echo -e 'Link: http://staging.talkpush.com:2812/\nUsername: admin\nPassword: monit'"
alias tp-creds-bug="echo -e 'Link: https://talkpush.atlassian.net/projects/TPBUGS/queues/custom/1\nUsername: devs@talkpush.com\nPassword: W8#7%pDUgbelv!vS'"
alias tp-remind-mina="echo -e 'Deploy: mina deploy\nOpen Console: mina console'"
alias tp-remind-socket-error="echo -e 'Stop Docker if running: docker-compose stop talkpush\nOpen the .env file and...\n...replace ELASTICSEARCH_URL=http://elastic:changeme@elasticsearch:9200\n...with ELASTICSEARCH_URL=http://elastic:changeme@localhost:9200\nInstall Dependencies: bundle install\nStart Puma: bundle exec puma'"
alias tp-setup-project="echo -e 'Setting up for the first time.\n' && rake db:reset && rake db:seed && rake company:seed && docker-compose exec talkpush sh -c 'rake elasticsearch:campaign_invitation:build' && docker-compose exec talkpush sh -c 'rake elasticsearch:campaign_invitation:import'"
alias tp-fix-subclass-error="docker-compose exec talkpush sh -c 'kill -s SIGUSR1 1'"

# FZF Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# RVM
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
