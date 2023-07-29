rename-session saturn
kill-window -a
kill-pane -a
rename-window editor
send "v" C-m
split-window -f
send "(cd ~; clear; figlet 'Saturn' -f big | lolcat;)" C-m
select-pane -t 1
new-window -n process
send "work:saturn:console" C-m
split-window -f
send "work:saturn:start" C-m
split-window -h
send "work:saturn:sidekiq" C-m
select-pane -t 1
resize-pane -Z
select-window -t editor
