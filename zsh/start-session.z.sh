
# ========================================================================== [Start Session] ===== #

start-session() {
  (cd ~/.history && git stash && git pull)
  echo "ZSH: History has been synced."
  (cd ~/.files && git pull)
  source ~/.zshrc
  echo "ZSH: ZSH has been restarted!"
}
