rename-session saturn
kill-session -a
kill-window -a
kill-pane -a

rename-window editor
send "vim" C-m
split-window -f
send "(cd ~; clear; figlet 'Saturn' -f big | lolcat;)" C-m
select-pane -t 1

new-window -n process
send "rails console" C-m
split-window -h
send "bin/rails server -p 3000" C-m
split-window -f
send "yarn dev:js" C-m
split-window -h
send "yarn build:css --watch" C-m
split-window -h
send "bundle exec sidekiq" C-m
select-pane -t 3
split-window -h
send "yarn dev:jsx" C-m
select-pane -t 1
resize-pane -Z

new-window -n notes
send "joplin" C-m

select-window -t editor
