
# ========================================================================== [Start Session] ===== #

start-session() {
  (cd ~/.history && git stash && git pull)
  echo "ZSH: History has been synced."
  (cd $STORAGE/Obsidian && git stash && git pull)
  echo "ZSH: Obsidian has been synced."
  (cd ~/.files && git stash && git pull)
  source ~/.zshrc
  echo "ZSH: ZSH has been restarted!"
}
