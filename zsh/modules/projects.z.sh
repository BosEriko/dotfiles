
# =============================================================================== [Projects] ===== #

jt() {
    case "$1" in
    "personal")
        cd $STORAGE/Codes/Personal
        ;;
    "work")
        cd $STORAGE/Codes/Work
        ;;
    "movies")
        cd $STORAGE/Movies
        ;;
    "youtube")
        cd $STORAGE/YouTube
        ;;
    "music")
        cd $STORAGE/Music
        ;;
    ".files")
        cd ~/.files
        ;;
    *)
        echo "Jump to: personal, work, movies, youtube, music or .files."
        ;;
    esac
}
