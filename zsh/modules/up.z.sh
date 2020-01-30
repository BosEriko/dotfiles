
# ===================================================================================== [Up] ===== #

up() {
  (cd ~/dotfiles && git pull)
  sh ~/dotfiles/generate.sh
  nvim +PlugInstall +qall
  terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'
  brew services stop yabai
  brew services start yabai
  terminal-notifier -title 'ZSH' -message 'Yabai has been restarted!'
  source ~/.zshrc
  terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
}

