
# ============================================================================ [End Session] ===== #

auto-push() {
  (cd $1 && git diff)
  printf "${B_YELLOW}Do you want to push your ${2} Repository (y/n)? ${RESET}"
  read answer
  if [ "$answer" != "${answer#[Yy]}" ] ;then
    (cd $1 && git add .)
    (cd $1 && git commit -m ":pencil: ${2} #$(date +%s)")
    (cd $1 && git push origin master)
    echo "${GREEN}${2} Repository: Pushed successfully.${RESET}"
  else
    echo "${RED}${2} Repository has not been pushed.${RESET}"
  fi
}

end-session() {
  # .history
  auto-push ~/.history "History"
  # password
  auto-push $STORAGE/Password "Password"
  # obsidian-personal
  auto-push $STORAGE/Obsidian/personal "Personal Obsidian"
  # obsidian-games
  auto-push $STORAGE/Obsidian/games "Games Obsidian"
  # obsidian-professional
  auto-push $STORAGE/Obsidian/professional "Professional Obsidian"
  # obsidian-til
  auto-push $STORAGE/Obsidian/til "TIL Obsidian"
  # obsidian-morning-ritual
  auto-push $STORAGE/Obsidian/morning-ritual "Morning Ritual Obsidian"
  # obsidian-daily-journal
  auto-push $STORAGE/Obsidian/daily-journal "Daily Journal Obsidian"
  # obsidian-blogs
  auto-push $STORAGE/Obsidian/blogs "Blogs Obsidian"
  # obsidian-dreams
  auto-push $STORAGE/Obsidian/dreams "Dreams Obsidian"
  # obsidian
  auto-push $STORAGE/Obsidian "Obsidian"
}
