rename-session referscout
kill-window -a
kill-pane -a

send "cd ~/Documents/Codes/Work/referscout" C-m
send "echo ${PASSWORD} | sudo -S service postgresql start" C-m
send "echo ${PASSWORD} | sudo -S service redis-server start" C-m
send "rails db:migrate RAILS_ENV=development" C-m
send "bundle install" C-m
send "yarn install" C-m
send "wslview http://r-scout.lvh.me:3000/login" C-m

rename-window editor
send "vim" C-m
split-window -f
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
