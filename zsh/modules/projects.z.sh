
# =============================================================================== [Projects] ===== #

jt() {
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
        cd ~/.dotfiles
        ;;
    "ops")
        cd ~/development/OpsManager
        ;;
    *)
        echo "Jump to: personal, work, vol, dotfiles or ops."
        ;;
    esac
}

