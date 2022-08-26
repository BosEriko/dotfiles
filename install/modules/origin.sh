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
(cd $STORAGE/Obsidian/Personal && git remote rm origin)
(cd $STORAGE/Obsidian/Personal && git remote add origin git@github.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/Personal && git remote add github git@github.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/Personal && git remote add gitlab git@gitlab.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/Personal && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/Personal && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/Personal && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-personal.git)
(cd $STORAGE/Obsidian/Personal && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-personal.git)

# Update origin for obsidian-games
(cd $STORAGE/Obsidian/Games && git remote rm origin)
(cd $STORAGE/Obsidian/Games && git remote add origin git@github.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/Games && git remote add github git@github.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/Games && git remote add gitlab git@gitlab.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/Games && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/Games && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/Games && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-games.git)
(cd $STORAGE/Obsidian/Games && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-games.git)

# Update origin for obsidian-professional
(cd $STORAGE/Obsidian/Professional && git remote rm origin)
(cd $STORAGE/Obsidian/Professional && git remote add origin git@github.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/Professional && git remote add github git@github.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/Professional && git remote add gitlab git@gitlab.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/Professional && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/Professional && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/Professional && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-professional.git)
(cd $STORAGE/Obsidian/Professional && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-professional.git)

# Update origin for obsidian-til
(cd $STORAGE/Obsidian/TIL && git remote rm origin)
(cd $STORAGE/Obsidian/TIL && git remote add origin git@github.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/TIL && git remote add github git@github.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/TIL && git remote add gitlab git@gitlab.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/TIL && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/TIL && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/TIL && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-til.git)
(cd $STORAGE/Obsidian/TIL && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-til.git)

# Update origin for obsidian-morning-ritual
(cd $STORAGE/Obsidian/Morning-Ritual && git remote rm origin)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote add origin git@github.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote add github git@github.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote add gitlab git@gitlab.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-morning-ritual.git)
(cd $STORAGE/Obsidian/Morning-Ritual && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-morning-ritual.git)

# Update origin for obsidian-daily-journal
(cd $STORAGE/Obsidian/Daily-Journal && git remote rm origin)
(cd $STORAGE/Obsidian/Daily-Journal && git remote add origin git@github.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/Daily-Journal && git remote add github git@github.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/Daily-Journal && git remote add gitlab git@gitlab.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/Daily-Journal && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/Daily-Journal && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/Daily-Journal && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-daily-journal.git)
(cd $STORAGE/Obsidian/Daily-Journal && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-daily-journal.git)

# Update origin for obsidian-blogs
(cd $STORAGE/Obsidian/Blogs && git remote rm origin)
(cd $STORAGE/Obsidian/Blogs && git remote add origin git@github.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/Blogs && git remote add github git@github.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/Blogs && git remote add gitlab git@gitlab.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/Blogs && git remote add bitbucket git@bitbucket.org:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/Blogs && git remote set-url --add --push origin git@github.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/Blogs && git remote set-url --add --push origin git@gitlab.com:BosEriko/obsidian-blogs.git)
(cd $STORAGE/Obsidian/Blogs && git remote set-url --add --push origin git@bitbucket.org:BosEriko/obsidian-blogs.git)


echo "Installing: Remote origins has been updated."
