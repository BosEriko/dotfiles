
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
    *)
        echo "Jump to: personal, work, vol or dotfiles."
        ;;
    esac
}

