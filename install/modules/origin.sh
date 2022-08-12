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

echo "Installing: Remote origins has been updated."
