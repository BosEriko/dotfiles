
# ============================================================================ [End Session] ===== #

auto-push() {
  (
    cd $1
    if [[ `git status --porcelain` ]]; then
      echo "${CYAN}${2} Repository has been changed. Pushing.${RESET}"
      git add .
      git commit -m ":pencil: ${2} #$(date +%s)"
      git push origin master
      echo "${GREEN}${2} Repository has been pushed successfully.${RESET}"
    else
      echo "${YELLOW}No changes to the ${2} Repository. Skipping.${RESET}"
    fi
  )
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
