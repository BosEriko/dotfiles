
# ============================================================================= [Tmux alias] ===== #

alias tmux:new="tmux new-session"
alias tmux:list="tmux list-sessions"
alias tmux:last="tmux attach-session"
alias tmux:clean="tmux kill-session -a && tmux kill-pane -a && tmux kill-window -a"
alias tmux:quit="tmux kill-session"
