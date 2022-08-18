
# =============================================================================== [Personal] ===== #

FIGLET_MESSAGE="Lakad Matatag!"
BOS_HELP_MESSAGE="

    This is a helper showing all your Bos commands.


    Usage: bos [option] [command]

${B_GREEN}
    Options:                    Commands:               Description:
${RESET}

    -f, --fun                   parrot                  Party Parrot
                                parrotsay               Parrot Say
                                train                   Let a train pass by
                                pipes                   Run some pipes
                                matrix                  Enter the matrix
                                cowsay                  Get a random fortune

    -dl, --download             movie                   Download movies
                                music                   Download music
                                redownload-music        Redownload music
                                youtube                 Download from YouTube
                                anime                   Watch anime using VLC

    -m, --media                 delete-movies           Delete movies
                                delete-youtube-videos   Delete YouTube videos

    -a, --assist                path                    Print out the list of paths
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

    -s, --session               start                   Start programming session
                                end                     End programming session

"
bos() {
    if [ -z "$1" ]; then
        echo "Type -h or --help to print all the Bos commands."
    else
        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            figlet $FIGLET_MESSAGE | lolcat && echo -e $BOS_HELP_MESSAGE
        elif [ "$1" = "-f" ] || [ "$1" = "--fun" ]; then
            if [ "$2" = "parrot" ]; then
                curl parrot.live
            elif [ "$2" = "parrotsay" ]; then
                parrotsay
            elif [ "$2" = "train" ]; then
                sl
            elif [ "$2" = "pipes" ]; then
                pipes.sh
            elif [ "$2" = "matrix" ]; then
                cmatrix
            elif [ "$2" = "cowsay" ]; then
                fortune | cowsay -f ghostbusters | lolcat
            else
                echo "Usage: -f <command> or --fun <command>"
            fi
        elif [ "$1" = "-dl" ] || [ "$1" = "--download" ]; then
            if [ "$2" = "movie" ]; then
                ~/.files/scripts/movie.sh
            elif [ "$2" = "anime" ]; then
                ani-cli -v -q 1080
            elif [ "$2" = "youtube" ]; then
                ~/.dotfiles/scripts/youtube.sh
            elif [ "$2" = "music" ]; then
                spotdl "https://open.spotify.com/playlist/306g28MRDf9bctpRaKcX3F?si=d4da5b76a7a94a58" --output ~/Music/Mega\ Music
            elif [ "$2" = "redownload-music" ]; then
                rm -rf ~/Music/Mega\ Music/* && spotdl "https://open.spotify.com/playlist/306g28MRDf9bctpRaKcX3F?si=d4da5b76a7a94a58" --output ~/Music/Mega\ Music
            else
                echo "Usage: -dl <command> or --download <command>"
            fi
        elif [ "$1" = "-m" ] || [ "$1" = "--media" ]; then
            if [ "$2" = "delete-movies" ]; then
                echo "Do you want to delete movies? (Ctrl-C to abort, or press enter to continue)"
                read
                rm -rf ~/Movies/Movies/*
            elif [ "$2" = "delete-youtube-videos" ]; then
                echo "Do you want to delete YouTube videos? (Ctrl-C to abort, or press enter to continue)"
                read
                rm -rf ~/Movies/YouTube/*
            else
                echo "Usage: -m <command> or --media <command>"
            fi
        elif [ "$1" = "-a" ] || [ "$1" = "--assist" ]; then
            if [ "$2" = "path" ]; then
                echo $PATH | tr \: \\n
            elif [ "$2" = "restart-zsh" ]; then
                source ~/.zshrc
                terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
            else
                echo "Usage: -a <command> or --assist <command>"
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
                EXTERNALIP=$(curl -sS ipinfo.io/ip)
                echo $EXTERNALIP
            elif [ "$2" = "ssh-key" ]; then
                cat ~/.ssh/id_rsa.pub | clip.exe
                echo "SSH Key has been copied to clipboard."
            elif [ "$2" = "deploy" ]; then
                vercel
            elif [ "$2" = "rbenv-rehash" ]; then
                rbenv rehash
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
        elif [ "$1" = "-s" ] || [ "$1" = "--session" ]; then
            if [ "$2" = "start" ]; then
                start-session
            elif [ "$2" = "end" ]; then
                end-session
            else
                echo "Usage: -s <command> or --session <command>"
            fi
        else
            echo "Command not found: $1"
        fi
    fi
}
