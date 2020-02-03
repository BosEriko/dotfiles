
# =================================================================================== [Down] ===== #

down() {
  (cd ~/dotfiles && git add ~/dotfiles/zsh/history)
  (cd ~/dotfiles && git commit -m "[Update ZSH History $(date +%s)]")
  (cd ~/dotfiles && git push origin master)
  terminal-notifier -title 'ZSH' -message 'History has been pushed.'
}

