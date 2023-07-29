rename-session saturn
kill-window -a
kill-pane -a

rename-window editor
send "vim" C-m
split-window -f
send "wslview http://localhost:3000" C-m
send "(cd ~; clear; figlet 'Saturn' -f big | lolcat;)" C-m
select-pane -t 1

new-window -n process
send "rails console" C-m
split-window -f
send "bin/dev" C-m
split-window -h
send "bundle exec sidekiq" C-m
select-pane -t 1
resize-pane -Z

new-window -n notes

select-window -t editor
