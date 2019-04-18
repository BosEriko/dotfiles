# ===========================================================================================================[ Load Tmux ]===== #
if [ "$TMUX" = "" ]; then
  tmux attach-session || tmux new -s default
fi

# =================================================================================[ Path to your oh-my-zsh installation ]===== #
export ZSH=$HOME/.oh-my-zsh

# =======================================================================================================[ Current theme ]===== #
ZSH_THEME="geoffgarside"

# =============================================================================================================[ History ]===== #
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# =============================================================================================================[ Sources ]===== #
source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

# ==========================================================================================================[ FZF Search ]===== #
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# =================================================================================================================[ NVM ]===== #
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

# =================================================================================================================[ RVM ]===== #
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ======================================================================================================[ Tmux Shortcuts ]===== #
alias tx-new="tmux new-session"
alias tx-list="tmux list-sessions"
alias tx-last="tmux attach-session"
alias tx-clean="tmux kill-session -a"

# ================================================================================================[ Back Directory Alias ]===== #
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# ====================================================================================================[ Python 3 Default ]===== #
alias python="python3"

# ================================================================================================[ Docker-compose Alias ]===== #
alias dcrw="docker-compose run web"

# ====================================================================================================[ Avoid using Code ]===== #
alias code="vim"

# =================================================================================================================[ Bos ]===== #
BOS_HELP_MESSAGE="

    This is a helper showing all your Bos commands.


    Usage: bos [option] [command]

\033[1m
    Options:                    Commands:               Description:
\033[0m

    -f, --fun                   parrot                  Party Parrot
                                parrotsay               Parrot Say

    -a, --assist                shutdown                Shutdown the computer
                                restart                 Restart the computer
                                ssh-key                 Print Main SSH Key
                                localhost               Start http-server
                                localhost-live          Start live-server
                                ngrok                   Start ngrok
                                google-chrome           Start Google Chrome
                                set-git-origin          Set Git Origins
                                cpu-usage               Start htop
                                cpu-temp                Start istats
                                clearbin                Clear system trash
                                npm-list                List global npm packages
                                npm-outdated            List global outdated npm packages
                                npm-update              Update global npm packages
                                external-ip             Show external IP address
                                restart-zsh             Restart ZSH

    -d, --directory             work                    Jump to work directory
                                personal                Jump to personal directory
                                dotfiles                Jump to the dotfiles directory

"
bos() {
    if [ -z "$1" ]; then
        echo "Type -h or --help to print all the Bos commands."
    else
        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            figlet 'El Psy Congroo!' && echo -e $BOS_HELP_MESSAGE
        elif [ "$1" = "-f" ] || [ "$1" = "--fun" ]; then
            if [ "$2" = "parrot" ]; then
                curl parrot.live
            elif [ "$2" = "parrotsay" ]; then
                parrotsay
            else
                echo "Usage: -f <command> or --fun <command>"
            fi
        elif [ "$1" = "-a" ] || [ "$1" = "--assist" ]; then
            if [ "$2" = "shutdown" ]; then
                sudo shutdown -h now
            elif [ "$2" = "restart" ]; then
                sudo shutdown -r now
            elif [ "$2" = "ssh-key" ]; then
                cat ~/.ssh/id_rsa.pub | pbcopy
                echo "SSH Key has been copied to clipboard."
            elif [ "$2" = "localhost" ]; then
                if [ -z "$3" ]; then
                    http-server
                else
                    http-server $3
                fi
            elif [ "$2" = "localhost-live" ]; then
                if [ -z "$3" ]; then
                    live-server
                else
                    live-server $3
                fi
            elif [ "$2" = "ngrok" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a port"
                else
                    ngrok http --region=ap $3
                fi
            elif [ "$2" = "google-chrome" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Google Chrome" $3
                fi
            elif [ "$2" = "set-git-origin" ]; then
                echo "Please specify the GitHub path:"
                read github_path
                echo "Please specify the GitLab path:"
                read gitlab_path
                echo "Please specify the Bitbucket path:"
                read bitbucket_path
                git remote add origin $github_path
                git remote add github $github_path
                git remote add gitlab $gitlab_path
                git remote add bitbucket $bitbucket_path
                git remote set-url --add --push origin $github_path
                git remote set-url --add --push origin $gitlab_path
                git remote set-url --add --push origin $bitbucket_path
                git remote -v
            elif [ "$2" = "cpu-usage" ]; then
                htop
            elif [ "$2" = "cpu-temp" ]; then
                istats
            elif [ "$2" = "clearbin" ]; then
                rm -rf ~/.local/share/Trash/*
            elif [ "$2" = "npm-list" ]; then
                npm list -g --depth=0
            elif [ "$2" = "npm-outdated" ]; then
                npm outdated -g --depth=0
            elif [ "$2" = "npm-update" ]; then
                npm update -g
            elif [ "$2" = "external-ip" ]; then
                curl ipinfo.io/ip
            elif [ "$2" = "restart-zsh" ]; then
                source ~/.zshrc
            else
                echo "Usage: -a <command> or --assist <command>"
            fi
        elif [ "$1" = "-d" ] || [ "$1" = "--directory" ]; then
            if [ "$2" = "work" ]; then
                cd ~/Documents/Codes/Work
            elif [ "$2" = "personal" ]; then
                cd ~/Documents/Codes/Personal
            elif [ "$2" = "dotfiles" ]; then
                cd ~/dotfiles
            else
                echo "Usage: -d <command> or --directory <command>"
            fi
        else
            echo "Command not found: $1"
        fi
    fi
}

# =========================================================================================================[ End of File ]===== #
