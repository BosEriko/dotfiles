
# =============================================================================== [Personal] ===== #

FIGLET_MESSAGE="El Psy Congroo!"
BOS_HELP_MESSAGE="

    This is a helper showing all your Bos commands.


    Usage: bos [option] [command]

\033[1m
    Options:                    Commands:               Description:
\033[0m

    -f, --fun                   parrot                  Party Parrot
                                parrotsay               Parrot Say
                                train                   Let a train pass by

    -a, --assist                shutdown                Shutdown the computer
                                restart                 Restart the computer
                                ssh-key                 Copy Main SSH Key to clipboard
                                localhost               Start http-server
                                localhost-live          Start live-server
                                ngrok                   Start ngrok
                                md                      Start Typora
                                deploy                  Deploy the current folder
                                qutebrowser             Start qutebrowser
                                clearbin                Clear system trash
                                yarn-list               List global yarn packages
                                yarn-interactive        Upgrade global yarn packages interactively
                                yarn-upgrade            Upgrade global yarn packages
                                rbenv-rehash            Run Rehash on rbenv
                                external-ip             Show external IP address
                                restart-zsh             Restart ZSH
                                path                    Print out the list of paths

    -vs, --vscodium             backup                  Backup the currently installed VSCodium extensions
                                install                 Install VSCodium extensions from the list

    -gc, --google-chrome        open                    Start Google Chrome

    -cpu                        usage                   Start gtop
                                temp                    Start istats

"
bos() {
    if [ -z "$1" ]; then
        echo "Type -h or --help to print all the Bos commands."
    else
        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            figlet $FIGLET_MESSAGE && echo -e $BOS_HELP_MESSAGE
        elif [ "$1" = "-f" ] || [ "$1" = "--fun" ]; then
            if [ "$2" = "parrot" ]; then
                curl parrot.live
            elif [ "$2" = "parrotsay" ]; then
                parrotsay
            elif [ "$2" = "train" ]; then
                sl
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
            elif [ "$2" = "md" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Typora" $3
                fi
            elif [ "$2" = "deploy" ]; then
              now
            elif [ "$2" = "qutebrowser" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "qutebrowser" $3
                fi
            elif [ "$2" = "clearbin" ]; then
                rm -rf ~/.local/share/Trash/*
            elif [ "$2" = "yarn-list" ]; then
                yarn global list
            elif [ "$2" = "yarn-interactive" ]; then
                yarn global upgrade-interactive
            elif [ "$2" = "yarn-upgrade" ]; then
                yarn global upgrade --latest
            elif [ "$2" = "rbenv-rehash" ]; then
                rm ~/.rbenv/shims/.rbenv-shim; rbenv rehash;
            elif [ "$2" = "external-ip" ]; then
                curl ipinfo.io/ip
            elif [ "$2" = "restart-zsh" ]; then
                source ~/.zshrc
                terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
            elif [ "$2" = "path" ]; then
                echo $PATH | tr \: \\n
            else
                echo "Usage: -a <command> or --assist <command>"
            fi
        elif [ "$1" = "-vs" ] || [ "$1" = "--vscodium" ]; then
            if [ "$2" = "backup" ]; then
                echo "Update VSCodium extensions list located at your dotfiles? (Ctrl-C to abort, or press enter to continue)"
                read
                echo "Please wait..."
                rm -rf ~/.dotfiles/vscodium/extensions.sh
                codium --list-extensions | xargs -L 1 echo codium --install-extension > ~/.dotfiles/vscodium/extensions.sh
                echo "VSCodium extensions list have been updated over on the dotfiles."
            elif [ "$2" = "install" ]; then
                echo "Do you want to install VSCodium extensions from the list located at your dotfiles? (Ctrl-C to abort, or press enter to continue)"
                read
                echo "Please wait..."
                sh ~/.dotfiles/vscodium/extensions.sh
                echo "VSCodium extensions have been installed."
            else
                echo "Usage: -vs <command> or --vscodium <command>"
            fi
        elif [ "$1" = "-gc" ] || [ "$1" = "--google-chrome" ]; then
            if [ "$2" = "open" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Google Chrome" $3
                fi
            else
                echo "Usage: -gc <command> or --google-chrome <command>"
            fi
        elif [ "$1" = "-cpu" ]; then
            if [ "$2" = "usage" ]; then
                gtop
            elif [ "$2" = "temp" ]; then
                istats
            else
                echo "Usage: -cpu <command>"
            fi
        else
            echo "Command not found: $1"
        fi
    fi
}

