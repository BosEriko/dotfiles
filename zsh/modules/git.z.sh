
# ============================================================================= [Git Extend] ===== #

GIT_HELP_MESSAGE="

    This is a helper showing all your Git custom commands.


    Usage: g [option] [parameter]

\033[1m
    Options:                    Description:
\033[0m

    a                           Alias for add
    b                           Alias for branch
    bd, branch-delete           Delete a branch locally and remotely
    bnc, branch-name-copy       Copy the current branch name to clipboard
    c                           Alias for commit
    co                          Alias for checkout
    d                           Alias for diff
    dt                          Alias for difftool
    g, go                       Instantly add, commit and push
    graph                       Show graph of branches
    h, help                     Show the list of custom Git commands
    lg                          Show log (Changes on all commits)
    lol                         Show log (Single line presentation)
    ls                          Alias for ls-files
    pl                          Alias for pull
    ps                          Alias for push
    r, rework                   Stash and clean the extra files
    re                          Alias for reset
    rl                          List versions
    s                           Alias for status
    sc, sync                    Sync all remote repositories
    so, set-origin              Set the origin path
    st                          Alias for stash
    t, tag                      Tag and push
    w, wtf                      Commit with an automated message

"
g() {
  if [ "$1" = "h" ] || [ "$1" = "help" ]; then
    git-help
  elif [ "$1" = "r" ] || [ "$1" = "rework" ]; then
    git-rework
  elif [ "$1" = "g" ] || [ "$1" = "go" ]; then
    git add .
    if [ -z "$2" ]; then
      git commit -m "[AUTO] $(curl -s http://whatthecommit.com/index.txt)"
    else
      git commit -m "$2"
    fi
    git push -u origin HEAD
  elif [ "$1" = "w" ] || [ "$1" = "wtf" ]; then
    git commit -m "[AUTO] $(curl -s http://whatthecommit.com/index.txt)"
  elif [ "$1" = "bnc" ] || [ "$1" = "branch-name-copy" ]; then
    git branch | grep \* | cut -d ' ' -f2 | pbcopy
  elif [ "$1" = "bd" ] || [ "$1" = "branch-delete" ]; then
    if [ -z "$2" ]; then
      echo "Please specify a branch"
    else
      git branch -D "$2"
    fi
  elif [ "$1" = "so" ] || [ "$1" = "set-origin" ]; then
    git remote rm origin
    echo "Please specify the git slug [e.g.: BosEriko/dotfiles]:"
    read git_slug
    git remote add origin git@github.com:${git_slug}.git
    git remote add github git@github.com:${git_slug}.git
    git remote add gitlab git@gitlab.com:${git_slug}.git
    git remote add bitbucket git@bitbucket.org:${git_slug}.git
    git remote set-url --add --push origin git@github.com:${git_slug}.git
    git remote set-url --add --push origin git@gitlab.com:${git_slug}.git
    git remote set-url --add --push origin git@bitbucket.org:${git_slug}.git
    git remote -v
  elif [ "$1" = "sc" ] || [ "$1" = "sync" ]; then
    if [ -z "$2" ]; then
      echo "Please specify a branch"
    else
      git pull origin $2
      git push origin $2
    fi
  elif [ "$1" = "t" ] || [ "$1" = "tag" ]; then
    if [ -z "$2" ]; then
      echo "Please specify a release name"
    else
      echo "Do you want to tag and push '$2'? (Ctrl-C to abort, or press enter to continue)"
      read
      git tag $2 -a
      git push origin $2
    fi
  else
    git $@
  fi
}

git-rework() {
  git stash
  git clean -fd
}

git-help() {
  figlet 'Save time!' && echo -e $GIT_HELP_MESSAGE
}

