
# ============================================================================= [Git Extend] ===== #

GIT_HELP_MESSAGE="

    This is a helper showing all your Git custom commands.


    Usage: g [option] [parameter]

${B_GREEN}
    Options:                    Description:
${RESET}

    a, add                      Interactively add files
    b                           Alias for branch
    bd, branch-delete           Delete a branch locally and remotely
    bnc, branch-name-copy       Copy the current branch name to clipboard
    c                           Alias for commit
    cp                          Alias for cherry-pick
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
  elif [ "$1" = "a" ] || [ "$1" = "add" ]; then
    git-add
  elif [ "$1" = "r" ] || [ "$1" = "rework" ]; then
    git-rework
  elif [ "$1" = "g" ] || [ "$1" = "go" ]; then
    git-go $2
  elif [ "$1" = "w" ] || [ "$1" = "wtf" ]; then
    git-wtf
  elif [ "$1" = "bnc" ] || [ "$1" = "branch-name-copy" ]; then
    git-branch-name-copy
  elif [ "$1" = "bd" ] || [ "$1" = "branch-delete" ]; then
    git-branch-delete $2
  elif [ "$1" = "so" ] || [ "$1" = "set-origin" ]; then
    git-set-origin
  elif [ "$1" = "sc" ] || [ "$1" = "sync" ]; then
    git-sync $2
  elif [ "$1" = "t" ] || [ "$1" = "tag" ]; then
    git-tag $2
  else
    git $@
  fi
}

# Rework
git-rework() {
  git stash
  git clean -fd
}

# Help
git-help() {
  (cd ~; figlet 'Save time!' | lolcat && echo -e $GIT_HELP_MESSAGE;)
}

# Go
git-go() {
  git add .
  if [ -z "$1" ]; then
    git-wtf
  else
    git commit -m "$1"
  fi
  git push -u origin HEAD
}

# WTF
git-wtf() {
  git commit -m "[AUTO] $(curl -s http://whatthecommit.com/index.txt)"
}

# Branch Name Copy
git-branch-name-copy() {
  git branch | grep \* | cut -d ' ' -f2 | tr -d '\n' | clip.exe
}

# Branch Delete
git-branch-delete() {
  if [ -z "$1" ]; then
    echo "Please specify a branch"
  else
    git branch -D "$1"
  fi
}

# Set Origin
git-set-origin() {
  echo "Please specify the git slug [e.g.: BosEriko/config]:"
  read git_slug && git remote rm origin
  git remote add origin git@github.com:${git_slug}.git
  git remote add github git@github.com:${git_slug}.git
  git remote add gitlab git@gitlab.com:${git_slug}.git
  git remote add bitbucket git@bitbucket.org:${git_slug}.git
  git remote set-url --add --push origin git@github.com:${git_slug}.git
  git remote set-url --add --push origin git@gitlab.com:${git_slug}.git
  git remote set-url --add --push origin git@bitbucket.org:${git_slug}.git
  git remote -v
}

# Sync
git-sync() {
  if [ -z "$1" ]; then
    echo "Please specify a branch"
  else
    git pull origin $1
    git push origin $1
  fi
}

# Tag
git-tag() {
  if [ -z "$1" ]; then
    echo "Please specify a release name"
  else
    echo "Do you want to tag and push '$1'? (Ctrl-C to abort, or press enter to continue)"
    read
    git tag $1 -a
    git push origin $1
  fi
}

# Interactive Add
git-add() {
  git add -N .
  git add -p
}
