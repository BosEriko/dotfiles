
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
  # obsidian
  auto-push $STORAGE/Obsidian/personal "Personal Obsidian"
  auto-push $STORAGE/Obsidian/games "Games Obsidian"
  auto-push $STORAGE/Obsidian/professional "Professional Obsidian"
  auto-push $STORAGE/Obsidian/til "TIL Obsidian"
  auto-push $STORAGE/Obsidian/morning-ritual "Morning Ritual Obsidian"
  auto-push $STORAGE/Obsidian/daily-journal "Daily Journal Obsidian"
  auto-push $STORAGE/Obsidian/blogs "Blogs Obsidian"
  auto-push $STORAGE/Obsidian/dreams "Dreams Obsidian"
  auto-push $STORAGE/Obsidian/twisuandbosu "TwisuAndBosu Obsidian"
  auto-push $STORAGE/Obsidian "Obsidian"
}
