
# =============================================================================== [Projects] ===== #

jt() {
    case "$1" in
    "personal")
        cd $STORAGE/Codes/Personal
        ;;
    "work")
        cd $STORAGE/Codes/Work
        ;;
    "anime")
        cd $STORAGE/Anime
        ;;
    "movies")
        cd $STORAGE/Movies
        ;;
    "music")
        cd $STORAGE/Music
        ;;
    "youtube")
        cd $STORAGE/YouTube
        ;;
    "obsidian")
        cd $STORAGE/Obsidian
        ;;
    ".files")
        cd ~/.files
        ;;
    *)
        echo "Jump to: personal, work, anime, movies, music, youtube or .files."
        ;;
    esac
}
