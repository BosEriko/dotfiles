
# ===================================================================================== [Up] ===== #

up() {
  (cd ~/dotfiles && git pull)
  sh ~/dotfiles/generate.sh
  nvim +PlugInstall +qall
  terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'
  source ~/.zshrc
  terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
}

