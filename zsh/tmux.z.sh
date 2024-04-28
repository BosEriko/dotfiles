
# ============================================================================= [Tmux alias] ===== #

alias tmux:new="tmux new-session"
alias tmux:list="tmux list-sessions"
alias tmux:last="tmux attach-session"
alias tmux:quit="tmux kill-session"

tmux:clean() {
  sudo docker network prune -f
  sudo docker stop $(docker ps -aq)
  sudo docker rm $(docker ps -aq)
  tmux kill-session -a
  tmux kill-pane -a
  tmux kill-window -a
  cd ~
  clear
}
