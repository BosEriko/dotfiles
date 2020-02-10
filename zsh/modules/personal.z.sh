
# =============================================================================== [Personal] ===== #

FIGLET_MESSAGE="Lakad Matatag!"
BOS_HELP_MESSAGE="

    This is a helper showing all your Bos commands.


    Usage: bos [option] [command]

\033[1m
    Options:                    Commands:               Description:
\033[0m

    -f, --fun                   parrot                  Party Parrot
                                parrotsay               Parrot Say
                                train                   Let a train pass by
                                pipes                   Run some pipes

    -vs, --vscodium             backup                  Backup the currently installed VSCodium extensions
                                install                 Install VSCodium extensions from the list

    -b, --browser               gc                      Start Google Chrome
                                qute                    Start qutebrowser
                                terminal                Start terminal browser

    -cpu                        usage                   Start gtop
                                temp                    Start istats

    -a, --assist                shutdown                Shutdown the computer
                                restart                 Restart the computer
                                md                      Start Typora
                                clearbin                Clear system trash
                                path                    Print out the list of paths
                                restart-zsh             Restart ZSH

    -y, --yarn                  list                    List global yarn packages
                                interactive             Upgrade global yarn packages interactively
                                upgrade                 Upgrade global yarn packages

    -p, --programming           external-ip             Show external IP address
                                ssh-key                 Copy Main SSH Key to clipboard
                                deploy                  Deploy the current folder
                                rbenv-rehash            Run Rehash on rbenv
                                localhost               Start http-server
                                localhost-live          Start live-server
                                ngrok                   Start ngrok

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
            elif [ "$2" = "pipes" ]; then
                pipes.sh
            else
                echo "Usage: -f <command> or --fun <command>"
            fi
        elif [ "$1" = "-a" ] || [ "$1" = "--assist" ]; then
            if [ "$2" = "shutdown" ]; then
                sudo shutdown -h now
            elif [ "$2" = "restart" ]; then
                sudo shutdown -r now
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
            elif [ "$2" = "md" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Typora" $3
                fi
            elif [ "$2" = "clearbin" ]; then
                rm -rf ~/.local/share/Trash/*
            elif [ "$2" = "rbenv-rehash" ]; then
                rm ~/.rbenv/shims/.rbenv-shim; rbenv rehash;
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
        elif [ "$1" = "-b" ] || [ "$1" = "--browser" ]; then
            if [ "$2" = "gc" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Google Chrome" $3
                fi
            elif [ "$2" = "qute" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "qutebrowser" $3
                fi
            elif [ "$2" = "terminal" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    links $3
                fi
            else
                echo "Usage: -b <command> or --browser <command>"
            fi
        elif [ "$1" = "-cpu" ]; then
            if [ "$2" = "usage" ]; then
                gtop
            elif [ "$2" = "temp" ]; then
                istats
            else
                echo "Usage: -cpu <command>"
            fi
        elif [ "$1" = "-y" ] || [ "$1" = "--yarn" ]; then
            if [ "$2" = "list" ]; then
                yarn global list
            elif [ "$2" = "interactive" ]; then
                yarn global upgrade-interactive
            elif [ "$2" = "upgrade" ]; then
                yarn global upgrade --latest
            else
                echo "Usage: -y <command> or --yarn <command>"
            fi
        elif [ "$1" = "-p" ] || [ "$1" = "--programming" ]; then
            if [ "$2" = "external-ip" ]; then
                curl ipinfo.io/ip
            elif [ "$2" = "ssh-key" ]; then
                cat ~/.ssh/id_rsa.pub | pbcopy
                echo "SSH Key has been copied to clipboard."
            elif [ "$2" = "deploy" ]; then
              now
            elif [ "$2" = "rbenv-rehash" ]; then
                rm ~/.rbenv/shims/.rbenv-shim; rbenv rehash;
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
            else
                echo "Usage: -p <command> or --programming <command>"
            fi
        else
            echo "Command not found: $1"
        fi
    fi
}

