rename-session purrintables
kill-session -a
kill-window -a
kill-pane -a

rename-window editor
send "cd ~/Documents/Codes/Work/kuru-studio/purrintables" C-m
send "vim" C-m
split-window -f
send "cd ~/Documents/Codes/Work/kuru-studio/purrintables" C-m
send "(cd ~; clear; figlet 'Purrintables' -f big | lolcat;)" C-m
split-window -h
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-server" C-m
send "(cd ~; clear; figlet 'KS Server' -f big | lolcat;)" C-m
select-pane -t 1
split-window -h
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-server" C-m
send "vim" C-m
select-pane -t 1

new-window -n process
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-server" C-m
send "docker-compose up" C-m
split-window -f
send "cd ~/Documents/Codes/Work/kuru-studio/purrintables" C-m
send "yarn develop" C-m
select-pane -t 1
split-window -h
send "cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-server" C-m
send "docker-compose run web rails console"
select-pane -t 2
resize-pane -Z

select-window -t editor
