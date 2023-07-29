rename-session saturn
kill-window -a
kill-pane -a

rename-window setup
send "cd ~/Documents/Codes/Work/resonate/saturn" C-m
send "sudo service postgresql start" C-m
send "sudo service redis-server start" C-m
send "rails db:migrate RAILS_ENV=development" C-m
send "bundle install" C-m
send "yarn install" C-m
send "wslview http://localhost:3000" C-m

new-window -n editor
kill-window -t setup
send "cd ~/Documents/Codes/Work/resonate/saturn" C-m
send "vim" C-m
split-window -f
send "(cd ~; clear; figlet 'Saturn' -f big | lolcat;)" C-m
select-pane -t 1

new-window -n process
send "cd ~/Documents/Codes/Work/resonate/saturn" C-m
send "rails console" C-m
split-window -f
send "bin/dev" C-m
split-window -h
send "bundle exec sidekiq" C-m
select-pane -t 1
resize-pane -Z

new-window -n notes

select-window -t editor
