rename-session referscout
rename-window editor
send "v" C-m
split-window -f
select-pane -t 1
resize-pane -Z
new-window -n process
send "work:referscout:console" C-m
split-window -h
send "work:referscout:start" C-m
split-window -f
send "work:referscout:sidekiq" C-m
split-window -h
send "work:referscout:webpack" C-m
select-pane -t 1
resize-pane -Z
select-window -t editor
