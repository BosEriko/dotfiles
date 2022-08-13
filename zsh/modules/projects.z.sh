
# =============================================================================== [Projects] ===== #

jt() {
    case "$1" in
    "personal")
        cd /mnt/d/Codes/Personal
        ;;
    "work")
        cd /mnt/d/Codes/Work
        ;;
    "dotfiles")
        cd ~/.files
        ;;
    *)
        echo "Jump to: personal, work or dotfiles."
        ;;
    esac
}
