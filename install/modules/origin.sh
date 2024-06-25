#!/usr/bin/env sh

# Set origins
set-origins() {
  (cd $1 && git remote rm origin)
  (cd $1 && git remote add origin git@github.com:$2.git)
  (cd $1 && git remote add github git@github.com:$2.git)
  (cd $1 && git remote add gitlab git@gitlab.com:$2.git)
  (cd $1 && git remote add bitbucket git@bitbucket.org:$2.git)
  (cd $1 && git remote set-url --add --push origin git@github.com:$2.git)
  (cd $1 && git remote set-url --add --push origin git@gitlab.com:$2.git)
  (cd $1 && git remote set-url --add --push origin git@bitbucket.org:$2.git)
}

# Update origin for .files
set-origins ~/.files BosEriko/dotfiles-windows

# Update origin for history
set-origins ~/.history BosEriko/history

# Update origin for password
set-origins $STORAGE/Password BosEriko/password

# Update origin for obsidian
set-origins $STORAGE/Obsidian BosEriko/obsidian

# Update origin for obsidian-personal
set-origins $STORAGE/Obsidian/personal BosEriko/obsidian-personal

# Update origin for obsidian-games
set-origins $STORAGE/Obsidian/games BosEriko/obsidian-games

# Update origin for obsidian-professional
set-origins $STORAGE/Obsidian/professional BosEriko/obsidian-professional

# Update origin for obsidian-til
set-origins $STORAGE/Obsidian/til BosEriko/obsidian-til

# Update origin for obsidian-morning-ritual
set-origins $STORAGE/Obsidian/morning-ritual BosEriko/obsidian-morning-ritual

# Update origin for obsidian-daily-journal
set-origins $STORAGE/Obsidian/daily-journal BosEriko/obsidian-daily-journal

# Update origin for obsidian-blogs
set-origins $STORAGE/Obsidian/blogs BosEriko/obsidian-blogs

# Update origin for obsidian-dreams
set-origins $STORAGE/Obsidian/dreams BosEriko/obsidian-dreams

# Update origin for obsidian-twisuandbosu
set-origins $STORAGE/Obsidian/twisuandbosu BosEriko/obsidian-twisuandbosu

echo "Installing: Remote origins has been updated."
