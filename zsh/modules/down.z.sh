
# =================================================================================== [Down] ===== #

down() {
  (cd ~/.history && git diff ~/.history/zsh/history)
  echo "Do you want to push your ZSH History? (Ctrl-C to abort, or press enter to continue)"
  read
  (cd ~/.history && git add ~/.history/zsh/history)
  (cd ~/.history && git commit -m ":pencil: ZSH History #$(date +%s)")
  (cd ~/.history && git push origin master)
  terminal-notifier -title 'ZSH' -message 'History has been pushed.'
}

