
# =============================================================================== [Projects] ===== #

jt() {
    case "$1" in
    "personal")
        cd ~/Documents/Codes/Personal
        ;;
    "work")
        cd ~/Documents/Codes/Work
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
    "password")
        cd $STORAGE/Password
        ;;
    "obsidian")
        cd $STORAGE/Obsidian
        ;;
    "config")
        cd ~/config
        ;;
    ".files")
        cd ~/.files
        ;;
    *)
        echo "Jump to: personal, work, anime, movies, music, youtube, password, obsidian, config or .files."
        ;;
    esac
}
