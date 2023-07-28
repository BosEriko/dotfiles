rename-session saturn
rename-window editor
send "v" C-m
new-window -n process
send "work:saturn:console" C-m
split-window -f
send "work:saturn:start" C-m
split-window -h
send "work:saturn:sidekiq" C-m
select-pane -t 1
select-window -t editor
