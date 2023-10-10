rename-session kuru-studio-social
kill-session -a
kill-window -a
kill-pane -a

rename-window editor
send "vim" C-m
split-window -f
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/web" C-m
send "(cd ~; clear; figlet 'KSS Web' -f big | lolcat;)" C-m
split-window -h
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/server" C-m
send "(cd ~; clear; figlet 'KSS Server' -f big | lolcat;)" C-m
select-pane -t 1

new-window -n process
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/server" C-m
send "sudo docker-compose up" C-m
split-window -f
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/web" C-m
send "yarn develop" C-m
select-pane -t 1
split-window -h
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/server" C-m
send "sudo docker-compose run web rails console" C-m
select-pane -t 2
resize-pane -Z

new-window -n notes
send "joplin" C-m

select-window -t editor
