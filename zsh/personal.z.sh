# Personal
FIGLET_MESSAGE="El Psy Congroo!"
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
                                browser                 Start Google Chrome
                                md                      Start Typora
                                vse-backup              Backup the currently installed Visual Studio Code extensions
                                vse-install             Install Visual Studio Code extensions from the list
                                qutebrowser             Start qutebrowser
                                cpu-usage               Start gtop
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
            figlet $FIGLET_MESSAGE && echo -e $BOS_HELP_MESSAGE
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
            elif [ "$2" = "browser" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Google Chrome" $3
                fi
            elif [ "$2" = "md" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "Typora" $3
                fi
            elif [ "$2" = "vse-backup" ]; then
                echo "Update Visual Studio Code extensions list located at your dotfiles? (Ctrl-C to abort, or press enter to continue)"
                read
                echo "Please wait..."
                code --list-extensions | xargs -L 1 echo code --install-extension | pbcopy
                rm -rf ~/dotfiles/vscode/extensions.sh
                pbpaste > ~/dotfiles/vscode/extensions.sh
                echo "Visual Studio Code extensions list have been updated over on the dotfiles."
            elif [ "$2" = "vse-install" ]; then
                echo "Do you want to install Visual Studio Code extensions from the list located at your dotfiles? (Ctrl-C to abort, or press enter to continue)"
                read
                echo "Please wait..."
                sh ~/dotfiles/vscode/extensions.sh
                echo "Visual Studio Code extensions have been installed."
            elif [ "$2" = "qutebrowser" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a path"
                else
                    open -a "qutebrowser" $3
                fi
            elif [ "$2" = "cpu-usage" ]; then
                gtop
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
                terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
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