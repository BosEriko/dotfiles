#!/usr/bin/env sh

# Update origin for dotfiles
(cd ~/.dotfiles && git remote add origin git@github.com:BosEriko/dotfiles.git)
(cd ~/.dotfiles && git remote add github git@github.com:BosEriko/dotfiles.git)
(cd ~/.dotfiles && git remote add gitlab git@gitlab.com:BosEriko/dotfiles.git)
(cd ~/.dotfiles && git remote add bitbucket git@bitbucket.org:BosEriko/dotfiles.git)
(cd ~/.dotfiles && git remote set-url --add --push origin git@github.com:BosEriko/dotfiles.git)
(cd ~/.dotfiles && git remote set-url --add --push origin git@gitlab.com:BosEriko/dotfiles.git)
(cd ~/.dotfiles && git remote set-url --add --push origin git@bitbucket.org:BosEriko/dotfiles.git)

# Update origin for history
(cd ~/.history && git remote add origin git@github.com:BosEriko/history.git)
(cd ~/.history && git remote add github git@github.com:BosEriko/history.git)
(cd ~/.history && git remote add gitlab git@gitlab.com:BosEriko/history.git)
(cd ~/.history && git remote add bitbucket git@bitbucket.org:BosEriko/history.git)
(cd ~/.history && git remote set-url --add --push origin git@github.com:BosEriko/history.git)
(cd ~/.history && git remote set-url --add --push origin git@gitlab.com:BosEriko/history.git)
(cd ~/.history && git remote set-url --add --push origin git@bitbucket.org:BosEriko/history.git)

terminal-notifier -title 'Installing' -message 'Remote origins has been updated.'

