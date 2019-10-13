
# ================================================================================ [Hotkeys] ===== #

# reload config file
bind r source-file ~/.tmux.conf \; display "Config Reloaded!"

# split window and fix path for tmux 1.9
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"
bind c new-window -c '#{pane_current_path}'

# Stop autorename on window
set-option -g allow-rename off

# synchronize all panes in a window
bind y setw synchronize-panes

# pane movement shortcuts
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# Resize pane shortcuts
bind -r H resize-pane -L 1
bind -r J resize-pane -D 1
bind -r K resize-pane -U 1
bind -r L resize-pane -R 1

# set vi mode for copy mode
setw -g mode-keys vi
# more settings to make copy-mode more vim-like
unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer
bind -Tcopy-mode-vi 'v' send -X begin-selection
bind -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel "tmux save-buffer - | reattach-to-user-namespace pbcopy"

# Buffers to/from Mac clipboard, yay tmux book from pragprog
bind C-c run "tmux save-buffer - | reattach-to-user-namespace pbcopy"
bind C-v run "tmux set-buffer $(reattach-to-user-namespace pbpaste); tmux paste-buffer"

