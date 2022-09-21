
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
  printf "${B_YELLOW}Do you want to source your ZSH config (y/n)? ${RESET}"
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    source ~/.zshrc
    echo "${GREEN}${2}ZSH has been sourced successfully.${RESET}"
  else
    echo "${YELLOW}${2}ZSH has not been sourced.${RESET}"
  fi
}
