
# Projects
jd() {
    case "$1" in
    "personal")
        cd ~/Documents/Codes/Personal
        ;;
    "work")
        cd ~/Documents/Codes/Work
        ;;
    "dotfiles")
        cd ~/dotfiles
        ;;
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
    "hestia")
        cd ~/Documents/Codes/Personal/hestia
        ;;
    "cli")
        cd ~/.bos-cli
        ;;
    "avemble")
        cd ~/Documents/Codes/Personal/avemble
        ;;
    "ops")
        cd ~/development/OpsManager
        ;;
    *)
        echo "Jump to: personal, work, dotfiles, ka-site, ka-desktop, ka-mobile, ka-bot, hestia, cli, avemble or ops."
        ;;
    esac
}

