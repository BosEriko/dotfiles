rename-session purrintables
kill-session -a
kill-window -a
kill-pane -a

rename-window editor
send "vim" C-m
split-window -f
send "(cd ~; clear; figlet 'Purrintables' -f big | lolcat;)" C-m
select-pane -t 1

new-window -n process
send "yarn develop" C-m

select-window -t editor
