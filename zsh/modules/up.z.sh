
# ===================================================================================== [Up] ===== #

up() {
  (cd ~/.history && git stash && git pull)
  echo "ZSH: History has been synced."
  (cd ~/.files && git pull)
  sh ~/.files/generate.sh
  echo "ZSH: ZSH has been generated"
  source ~/.zshrc
  echo "ZSH: ZSH has been restarted!"
}
