
# ========================================================================== [Start Session] ===== #

auto-pull() {
  (
    cd $1
    git fetch
    if [[ `git status --porcelain` ]]; then
      git checkout .
      git pull origin master
      echo "${GREEN}${2} Repository has been synced successfully.${RESET}"
    else
      echo "${YELLOW}No changes to the ${2} Repository. Skipping.${RESET}"
    fi
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
