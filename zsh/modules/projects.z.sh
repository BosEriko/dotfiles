
# =============================================================================== [Projects] ===== #

jt() {
    case "$1" in
    "personal")
        cd $STORAGE/Codes/Personal
        ;;
    "work")
        cd $STORAGE/Codes/Work
        ;;
    "dotfiles")
        cd ~/.files
        ;;
    *)
        echo "Jump to: personal, work or dotfiles."
        ;;
    esac
}
