
# ============================================================================ [End Session] ===== #

end-session() {
  (cd ~/.history && git diff)
  echo "Do you want to push your History Repository? (Ctrl-C to abort, or press enter to continue)"
  read
  (cd ~/.history && git add .)
  (cd ~/.history && git commit -m ":pencil: History #$(date +%s)")
  (cd ~/.history && git push origin master)
  echo "History Repository: Pushed successfully."
}
