#!/usr/bin/env sh

# Update origin for .files
(cd ~/.files && git remote rm origin)
(cd ~/.files && git remote add origin git@github.com:BosEriko/dotfiles-windows.git)
(cd ~/.files && git remote add github git@github.com:BosEriko/dotfiles-windows.git)
(cd ~/.files && git remote add gitlab git@gitlab.com:BosEriko/dotfiles-windows.git)
(cd ~/.files && git remote add bitbucket git@bitbucket.org:BosEriko/dotfiles-windows.git)
(cd ~/.files && git remote set-url --add --push origin git@github.com:BosEriko/dotfiles-windows.git)
(cd ~/.files && git remote set-url --add --push origin git@gitlab.com:BosEriko/dotfiles-windows.git)
(cd ~/.files && git remote set-url --add --push origin git@bitbucket.org:BosEriko/dotfiles-windows.git)

# Update origin for history
(cd ~/.history && git remote rm origin)
(cd ~/.history && git remote add origin git@github.com:BosEriko/history.git)
(cd ~/.history && git remote add github git@github.com:BosEriko/history.git)
(cd ~/.history && git remote add gitlab git@gitlab.com:BosEriko/history.git)
(cd ~/.history && git remote add bitbucket git@bitbucket.org:BosEriko/history.git)
(cd ~/.history && git remote set-url --add --push origin git@github.com:BosEriko/history.git)
(cd ~/.history && git remote set-url --add --push origin git@gitlab.com:BosEriko/history.git)
(cd ~/.history && git remote set-url --add --push origin git@bitbucket.org:BosEriko/history.git)


# Update origin for obsidian
(cd $STORAGE/Obsidian && git remote rm origin)
(cd $STORAGE/Obsidian && git remote add origin git@github.com:BosEriko/obsidian.git)
(cd $STORAGE/Obsidian && git remote add github git@github.com:BosEriko/obsidian.git)
(cd $STORAGE/Obsidian && git remote add gitlab git@gitlab.com:BosEriko/obsidian.git)
(cd $STORAGE/Obsidian && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian.git)
(cd $STORAGE/Obsidian && git remote set-url --add --push origin git@github.com:BosEriko/obsidian.git)
(cd $STORAGE/Obsidian && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian.git)
(cd $STORAGE/Obsidian && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian.git)

# Update origin for obsidian-personal
(cd $STORAGE/Obsidian/personal && git remote rm origin)
(cd $STORAGE/Obsidian/personal && git remote add origin git@github.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/personal && git remote add github git@github.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/personal && git remote add gitlab git@gitlab.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/personal && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/personal && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/personal && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/personal && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-personal.git)

# Update origin for obsidian-games
(cd $STORAGE/Obsidian/games && git remote rm origin)
(cd $STORAGE/Obsidian/games && git remote add origin git@github.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/games && git remote add github git@github.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/games && git remote add gitlab git@gitlab.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/games && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/games && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/games && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/games && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-games.git)

# Update origin for obsidian-professional
(cd $STORAGE/Obsidian/professional && git remote rm origin)
(cd $STORAGE/Obsidian/professional && git remote add origin git@github.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/professional && git remote add github git@github.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/professional && git remote add gitlab git@gitlab.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/professional && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/professional && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/professional && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/professional && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-professional.git)

# Update origin for obsidian-til
(cd $STORAGE/Obsidian/til && git remote rm origin)
(cd $STORAGE/Obsidian/til && git remote add origin git@github.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/til && git remote add github git@github.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/til && git remote add gitlab git@gitlab.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/til && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/til && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/til && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/til && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-til.git)

# Update origin for obsidian-morning-ritual
(cd $STORAGE/Obsidian/morning-ritual && git remote rm origin)
(cd $STORAGE/Obsidian/morning-ritual && git remote add origin git@github.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/morning-ritual && git remote add github git@github.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/morning-ritual && git remote add gitlab git@gitlab.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/morning-ritual && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/morning-ritual && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/morning-ritual && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/morning-ritual && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-morning-ritual.git)

# Update origin for obsidian-daily-journal
(cd $STORAGE/Obsidian/daily-journal && git remote rm origin)
(cd $STORAGE/Obsidian/daily-journal && git remote add origin git@github.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/daily-journal && git remote add github git@github.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/daily-journal && git remote add gitlab git@gitlab.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/daily-journal && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/daily-journal && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/daily-journal && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/daily-journal && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-daily-journal.git)

# Update origin for obsidian-blogs
(cd $STORAGE/Obsidian/blogs && git remote rm origin)
(cd $STORAGE/Obsidian/blogs && git remote add origin git@github.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/blogs && git remote add github git@github.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/blogs && git remote add gitlab git@gitlab.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/blogs && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/blogs && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/blogs && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/blogs && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-blogs.git)

echo "Installing: Remote origins has been updated."
