rename-session referscout
kill-window -a
kill-pane -a

rename-window editor
send "vim" C-m
split-window -f
send "wslview http://r-scout.lvh.me:3000/login" C-m
send "(cd ~; clear; figlet 'ReferScout' -f big | lolcat;)" C-m
select-pane -t 1

new-window -n process
send "rails console" C-m
split-window -h
send "bin/rails server" C-m
split-window -f
send "bundle exec sidekiq" C-m
split-window -h
send "bin/webpack-dev-server" C-m
select-pane -t 1
resize-pane -Z

new-window -n notes

select-window -t editor
