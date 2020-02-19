
# =================================================================================== [Down] ===== #

down() {
  (cd ~/.dotfiles && git log)
  echo "Do you want to push your ZSH History? (Ctrl-C to abort, or press enter to continue)"
  read
  (cd ~/.dotfiles && git add ~/.dotfiles/zsh/history)
  (cd ~/.dotfiles && git commit -m ":pencil: ZSH History #$(date +%s)")
  (cd ~/.dotfiles && git push origin master)
  terminal-notifier -title 'ZSH' -message 'History has been pushed.'
}

