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
TALKPUSH_HELP_MESSAGE="

    This is a helper showing all your Talkpush commands.


    Usage: tp [options] [command]

\033[1m
    Options:                    Commands:               Description:
\033[0m

    -h, --help                                          Show all commands

    -s, --start                 app                     Start Application
                                sidekiq                 Start Sidekiq
                                mailhog                 Start Mailhog
                                shell                   Start Shell (inside Docker)
                                console                 Start Rails console (inside Docker)
                                logs                    Start Server logs

    -c, --credential            app                     Application credentials
                                staging                 Staging credentials
                                bugs                    Bug tracking credentials

    -r, --reminder              mina                    Mina instructions reminder
                                socket-error            Socket error instructions reminder

    -e, --setup                 project                 Setup project for the first time

    -f, --fix                   subclass-error          Fix SubClass error

"

tp() {
    if [ -z "$1" ]; then
        echo "Type -h or --help to print all the Talkpush commands."
    else
        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            figlet 'Talkpush Helpers' && echo -e $TALKPUSH_HELP_MESSAGE
        elif [ "$1" = "-s" ] || [ "$1" = "--start" ]; then
            if [ "$2" = "app" ]; then
                docker-compose stop && docker-compose rm -f && docker-compose up -d talkpush && /usr/bin/open -a '/Applications/Google Chrome.app' 'http://lvh.me/' && bin/webpack-watcher
            elif [ "$2" = "sidekiq" ]; then
                bundle exec sidekiq -C ./config/sidekiq.yml
            elif [ "$2" = "mailhog" ]; then
                docker-compose up -d mailhog && /usr/bin/open -a '/Applications/Google Chrome.app' 'http://localhost:8025/'
            elif [ "$2" = "shell" ]; then
                docker-compose exec talkpush sh
            elif [ "$2" = "console" ]; then
                docker-compose exec talkpush sh -c 'rails c'
            elif [ "$2" = "logs" ]; then
                docker attach talkpush
            else
                echo "Usage: -s <command> or --start <command>"
            fi
        elif [ "$1" = "-c" ] || [ "$1" = "--credential" ]; then
            if [ "$2" = "app" ]; then
                echo -e 'Link: localhost\nUsername: dev@talkpush.com\nPassword: talkpush'
            elif [ "$2" = "staging" ]; then
                echo -e 'Link: http://staging.talkpush.com:2812/\nUsername: admin\nPassword: monit'
            elif [ "$2" = "bugs" ]; then
                echo -e 'Link: https://talkpush.atlassian.net/projects/TPBUGS/queues/custom/1\nUsername: devs@talkpush.com\nPassword: W8#7%pDUgbelv!vS'
            else
                echo "Usage: -c <command> or --credential <command>"
            fi
        elif [ "$1" = "-r" ] || [ "$1" = "--reminder" ]; then
            if [ "$2" = "mina" ]; then
                echo -e 'Deploy: mina deploy\nOpen Console: mina console'
            elif [ "$2" = "socket-error" ]; then
                echo -e 'Stop Docker if running: docker-compose stop talkpush\nOpen the .env file and...\n...replace ELASTICSEARCH_URL=http://elastic:changeme@elasticsearch:9200\n...with ELASTICSEARCH_URL=http://elastic:changeme@localhost:9200\nInstall Dependencies: bundle install\nStart Puma: bundle exec puma'
            else
                echo "Usage: -r <command> or --reminder <command>"
            fi
        elif [ "$1" = "-e" ] || [ "$1" = "--setup" ]; then
            if [ "$2" = "project" ]; then
                echo -e 'Setting up for the first time.\n' && rake db:reset && rake db:seed && rake company:seed && docker-compose exec talkpush sh -c 'rake elasticsearch:campaign_invitation:build' && docker-compose exec talkpush sh -c 'rake elasticsearch:campaign_invitation:import'
            else
                echo "Usage: -e <command> or --setup <command>"
            fi
        elif [ "$1" = "-f" ] || [ "$1" = "--fix" ]; then
            if [ "$2" = "subclass-error" ]; then
                docker-compose exec talkpush sh -c 'kill -s SIGUSR1 1'
            else
                echo "Usage: -f <command> or --fix <command>"
            fi
        else
            echo "Command not found: $1"
        fi
    fi
}

# FZF Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# RVM
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"