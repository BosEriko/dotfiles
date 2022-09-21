
# ========================================================================== [Start Session] ===== #

auto-pull() {
  (
    cd $1
    git checkout .
    git pull
    echo "${GREEN}${2} Repository has been synced successfully.${RESET}"
  )
}

start-session() {
  # .history
  auto-pull ~/.history "History"
  # .history
  auto-pull $STORAGE/Obsidian "Obsidian"
  # password
  auto-pull $STORAGE/Password "Password"
  # .files
  auto-pull ~/.files "Dotfiles"
  # Source ZSH
  source ~/.zshrc
  echo "ZSH: ZSH has been restarted!"
}
