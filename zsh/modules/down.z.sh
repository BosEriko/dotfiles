
# ===================================================================================== [Up] ===== #

down() {
  (cd ~/dotfiles && git add ~/dotfiles/zsh/history)
  (cd ~/dotfiles && git commit -m "[Update Shell History $(date +%s)]")
  (cd ~/dotfiles && git push origin master)
  terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'
}

