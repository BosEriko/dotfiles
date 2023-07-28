rename-session referscout
rename-window editor
send "v" C-m
new-window -n process
send "work:referscout:console" C-m
split-window -h
send "work:referscout:start" C-m
split-window -f
send "work:referscout:sidekiq" C-m
split-window -h
send "work:referscout:webpack" C-m
select-window -t editor
