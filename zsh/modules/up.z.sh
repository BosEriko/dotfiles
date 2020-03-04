
# ===================================================================================== [Up] ===== #

up() {
  (cd ~/.history && git stash && git pull)
  terminal-notifier -title 'ZSH' -message 'History has been synced.'
  (cd ~/.dotfiles && git pull)
  sh ~/.dotfiles/generate.sh
  nvim +PlugInstall +qall
  terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'
  nvim +PlugClean +qall
  terminal-notifier -title 'Installing' -message 'Unused Vim Extensions have been removed.'
  brew services stop yabai
  brew services start yabai
  terminal-notifier -title 'Yabai' -message 'Yabai has been restarted!'
  source ~/.zshrc
  terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
}

