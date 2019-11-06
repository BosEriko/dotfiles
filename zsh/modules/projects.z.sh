
# =============================================================================== [Projects] ===== #

jd() {
    case "$1" in
    "personal")
        cd ~/Documents/Codes/Personal
        ;;
    "work")
        cd ~/Documents/Codes/Work
        ;;
    "vol")
        cd /Volumes
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
    "cli")
        cd ~/.bos-cli
        ;;
    "ops")
        cd ~/development/OpsManager
        ;;
    *)
        echo "Jump to: personal, work, vol, dotfiles, ka-site, ka-desktop, ka-mobile, ka-bot, cli or ops."
        ;;
    esac
}

