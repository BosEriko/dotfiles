
# ===================================================================================== [Up] ===== #

up() {
  (cd ~/.dotfiles && git checkout ~/.dotfiles/zsh/history)
  terminal-notifier -title 'ZSH' -message 'History has been synced.'
  (cd ~/.dotfiles && git pull)
  sh ~/.dotfiles/generate.sh
  nvim +PlugInstall +qall
  terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'
  brew services stop skhd
  brew services start skhd
  terminal-notifier -title 'skhd' -message 'skhd has been restarted!'
  brew services stop yabai
  brew services start yabai
  terminal-notifier -title 'Yabai' -message 'Yabai has been restarted!'
  source ~/.zshrc
  terminal-notifier -title 'ZSH' -message 'ZSH has been restarted!'
}

