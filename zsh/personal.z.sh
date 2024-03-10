
# =============================================================================== [Personal] ===== #

FIGLET_MESSAGE="Lakad Matatag!"
BOS_HELP_MESSAGE="

    This is a helper showing all your Bos commands.


    Usage: bos [option] [command]

${B_GREEN}
    Options:                    Commands:               Description:
${RESET}

    -f, --fun                   parrot                  Party Parrot
                                cowsay                  Get a random fortune

    -dl, --download             anime                   Download anime
                                movie                   Download a movie
                                music                   Download music
                                youtube                 Download a YouTube Video

    -dm, --delete-media         anime                   Delete anime
                                movies                  Delete movies
                                music                   Delete music
                                youtube                 Delete YouTube videos

    -a, --assist                path                    Print out the list of paths
                                restart-zsh             Restart ZSH
                                restow                  Restow your config

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
                                upload                  Upload a file online
                                start-psql              Start PostgreSQL

    -s, --session               start                   Start programming session
                                end                     End programming session

"
bos() {
    if [ -z "$1" ]; then
        echo "Type -h or --help to print all the Bos commands."
    else
        if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
            (cd ~; figlet $FIGLET_MESSAGE | lolcat && echo -e $BOS_HELP_MESSAGE;)
        elif [ "$1" = "-f" ] || [ "$1" = "--fun" ]; then
            if [ "$2" = "parrot" ]; then
                curl parrot.live
            elif [ "$2" = "cowsay" ]; then
                fortune | cowsay -f ghostbusters | lolcat
            else
                echo "Usage: -f <command> or --fun <command>"
            fi
        elif [ "$1" = "-dl" ] || [ "$1" = "--download" ]; then
            if [ "$2" = "movie" ]; then
                ~/.files/scripts/movie.sh
            elif [ "$2" = "anime" ]; then
                ~/.files/scripts/anime.sh
            elif [ "$2" = "youtube" ]; then
                ~/.files/scripts/youtube.sh
            elif [ "$2" = "music" ]; then
                spotdl "https://open.spotify.com/playlist/306g28MRDf9bctpRaKcX3F?si=d4da5b76a7a94a58" --output $STORAGE/Music
                echo "${YELLOW}Downloaded! If you're using Spotify as your player don't forget to reindex the songs by toggling on and off the music directory you have your music on under the \"Show songs from\" settings.${RESET}"
            else
                echo "Usage: -dl <command> or --download <command>"
            fi
        elif [ "$1" = "-dm" ] || [ "$1" = "--delete-media" ]; then
            if [ "$2" = "movies" ]; then
                echo "Do you want to delete your movies? (Ctrl-C to abort, or press enter to continue)"
                read
                rm -rf $STORAGE/Movies/*
            elif [ "$2" = "youtube" ]; then
                echo "Do you want to delete YouTube videos? (Ctrl-C to abort, or press enter to continue)"
                read
                rm -rf $STORAGE/YouTube/*
            elif [ "$2" = "anime" ]; then
                echo "Do you want to delete Anime videos? (Ctrl-C to abort, or press enter to continue)"
                read
                rm -rf $STORAGE/Anime/*
            elif [ "$2" = "music" ]; then
                echo "Do you want to delete your music library? (Ctrl-C to abort, or press enter to continue)"
                read
                rm -rf $STORAGE/Music/*
            else
                echo "Usage: -dm <command> or --delete-media <command>"
            fi
        elif [ "$1" = "-a" ] || [ "$1" = "--assist" ]; then
            if [ "$2" = "path" ]; then
                echo $PATH | tr \: \\n
            elif [ "$2" = "restart-zsh" ]; then
                source ~/.zshrc
                terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
            elif [ "$2" = "restow" ]; then
                echo "Do you want to restow your config? (Ctrl-C to abort, or press enter to continue)"
                read
                ~/.files/install/modules/config.sh
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
            elif [ "$2" = "upload" ]; then
                if [ -z "$3" ]; then
                    echo "Please specify a file"
                else
                    curl -s --upload-file $3 https://transfer.sh/$3 | clip.exe
                fi
            elif [ "$2" = "start-psql" ]; then
                echo "Do you want to start PostgreSQL? (Ctrl-C to abort, or press enter to continue)"
                read
                sudo systemctl start postgresql.service
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
