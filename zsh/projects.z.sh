# Projects
proj() {
    case "$1" in
    "ka-site")
            cd ~/Documents/Codes/Personal/kuru-anime/website-application
            ;;
    "ka-desktop")
            cd ~/Documents/Codes/Personal/kuru-anime/desktop-application
            ;;
    "ka-mobile")
            cd ~/Documents/Codes/Personal/kuru-anime/mobile_application
            ;;
    "ka-bot")
            cd ~/Documents/Codes/Personal/kuru-anime/discord-bot-application
            ;;
    "ka-bot")
            cd ~/Documents/Codes/Personal/kuru-anime/bot
            ;;
    "ops")
            cd ~/development/OpsManager
            ;;
    *)
            cd ~
            ;;
    esac
}