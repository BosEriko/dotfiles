
# ========================================================================== [Start Session] ===== #

auto-pull() {
  (
    cd $1
    git checkout .
    git pull origin master
    echo "${GREEN}${2} Repository has been synced successfully.${RESET}"
  )
}

start-session() {
  # .history
  auto-pull ~/.history "History"
  # password
  auto-pull $STORAGE/Password "Password"
  # obsidian
  auto-pull $STORAGE/Obsidian "Obsidian"
  # .files
  auto-pull ~/.files "Dotfiles"
  # Source ZSH
  source ~/.zshrc
  echo "ZSH: ZSH has been restarted!"
}
