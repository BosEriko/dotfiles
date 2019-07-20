. ~/dotfiles/zsh/config.z.sh
. ~/dotfiles/zsh/plugins.z.sh
. ~/dotfiles/zsh/fzf.z.sh
. ~/dotfiles/zsh/nvm.z.sh
. ~/dotfiles/zsh/rvm.z.sh
. ~/dotfiles/zsh/flutter.z.sh
. ~/dotfiles/zsh/dir.z.sh
. ~/dotfiles/zsh/python.z.sh
. ~/dotfiles/zsh/docker.z.sh
. ~/dotfiles/zsh/projects.z.sh
. ~/dotfiles/zsh/git.z.sh
. ~/dotfiles/zsh/personal.z.sh

# ==========================================================================================================[ OpsManager ]===== #
# Customize to your needs...
alias gitspec='rspec $(git st | grep "...spec/.*_spec.rb" | cut -c 4- | xargs)'
alias gap='git add -p'
alias gan='git add -N .'
alias ganp='git add -N . && git add -p'
alias gpb='`git push 2>&1 > /dev/null | grep "git push"`'
alias gplush='git pull; git push'

alias grbrm='git-branch-remote-delete' # from functions.zsh
alias gbrrm='git-branch-remote-delete' # from functions.zsh
alias gbrd='git-branch-remote-delete' # from functions.zsh
alias gbclean='git-branch-cleanup' # from functions.zsh

alias gwb='current_branch' # from oh-my-zsh
alias gr-h='git reset --hard'
alias gds='git diff --staged'

alias gquick='git-quick-amend'
alias gquik='git-quick-amend'
alias gquak='git-quick-amend'
alias gqa='git-quick-amend'

alias gwip='git-wip' # from functions.zsh
alias gcwip='git-wip' # from functions.zsh

alias gci='git-ci-commit' # from functions.zsh

alias ghot='git-commit-hotfix' # from functions.zsh
alias gchot='git-commit-hotfix' # from functions.zsh
alias gchotfix='git-commit-hotfix' # from functions.zsh
alias ghotfix='git-commit-hotfix' # from functions.zsh

alias gcchor='git-commit-chore' # from functions.zsh
alias gcchore='git-commit-chore' # from functions.zsh
alias gchor='git-commit-chore' # from functions.zsh
alias gchore='git-commit-chore' # from functions.zsh

# Edit and Aliases
alias ec='emacsclient -n'
alias e='edit'
alias ae='edit ~/.zsh.d/modules/aliases.zsh'
alias ar='source ~/.zsh.d/modules/aliases.zsh'
alias fur='source ~/.zsh.d/modules/functions.zsh'
alias ze='edit ~/.zshrc'
alias zv='edit ~/.zshenv'

# Listing
alias l='ls -a1'
alias ll='ls -halF'
alias la='ls -halF'

# Rails / Spring / Rspec
alias rp='rspec'
alias rpf='rspec --fail-fast'
alias rspecf='rspec --fail-fast'
alias rr='rspec-run-changed-specs'
alias rk='rake'
alias ss='spring stop'

alias rs='rails server'
alias rc='rails console'
alias rd='rails db'

alias ikr='interactively-kill-ruby' # from functions.zsh

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'
alias rdmt='rake db:migrate db:test:prepare'

# Edit latest rails migration
alias eldm='edit `find ./db/migrate | tail -1`'

alias gitx='/Applications/GitX.app/Contents/Resources/gitx'

# Jump to Postgres repl
alias psq='psql -U postgres'

# what's my IP?
alias ifconfig-me='dig +short myip.opendns.com @resolver1.opendns.com'

# unix timestamp
alias timestamp='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%s"'

alias miron='mirror -on'
alias miroff='mirror -off'

alias serve='ruby -run -e httpd . -p1234'

# Git helper functions
# Note: Hub has replaced many homemade functions here. see https://github.com/github/hub
git-branch-remote-delete() {
  branch_name=$1
  git push --force origin :$branch_name
}

git-quick-amend () {
  git commit --amend -C HEAD --reset-author
}

git-wip() {
  git commit -m "WIP - $(printf '%s ' "$@")"
}

git-ci-commit() {
  git commit -m "[CI] $(printf '%s ' "$@")"
}

git-commit-chore() {
  git commit -m "[Chore] $(printf '%s ' "$@")"
}

git-commit-hotfix() {
  git commit -m "[Hotfix] $(printf '%s ' "$@")"
}

git-authors() {
  git --no-pager log --format='%aN : %ae' | sort -u
}

git-author-emails() {
  git --no-pager log --format='%aN : %ae' | sort -u | tr "\n" " "
}

git-branch-cleanup() {
  git branch --merged | grep -v \* | xargs git branch -d
}

git_pair_info(){
  git_email=$(git config user.email)
  if [[ $git_email =~ "pair+" ]]; then
    pair=$(echo $git_email | sed -e 's/pair\+//' -e 's/@opsmanager.com//' | tr "+" " ")
    echo "Pair: $pair"
  else
    echo "Git: $git_email"
  fi
}

rspec-run-changed-specs() {
  rspec $(git status | grep spec | grep "modified:" | cut -b 14-)
}

origin() {
  git remote -v |\
    grep -E 'origin.*(fetch)' |\
    sed -e 's/origin//' -e 's/(fetch)//'|\
    tr -d "\t "
}

vid2gif() {
  ffmpeg -i "$1" -vf scale=800:-1 -r 10 -f image2pipe -vcodec ppm - |\
    convert -delay 5 -layers Optimize -loop 0 - "$2"
}

git-add-https-user () {
  if [ -z $1 ]; then
    echo "Username not set"
  else
    https_remote=$(git remote -v | head -1 | grep -E -o 'https:[^ ]*')
    existing_user=$(echo $https_remote | grep  -E -o "[^/]*@")
    if [ -z $existing_user ]; then
      https_remote=$(echo $https_remote | sed "s/https:\/\//https:\/\/$1@/")
    else
      https_remote=$(echo $https_remote | sed "s/https:\/\/.*@/https:\/\/$1@/")
    fi
    echo $https_remote
    git remote set-url origin $https_remote
  fi
}

get-git-remote-url() {
  git remote -v | head -1 | grep -E -o "$1[^ ]*"
}

replace-github-https-with-ssh() {
  echo $1 | sed -E \
                -e 's/https:\/\/([[:alnum:]_.-]*@)?/git@/' \
                -e 's/(.git)?$/.git/' \
                -e 's/github\.com\//github.com:/'
}

git-ssh2https () {
  git_remote=$(get-git-remote-url "git@")
  https_remote=$(echo $git_remote | sed -e 's/:/\//' -e 's/git@/https:\/\//' -e 's/\.git$//')
  git remote set-url origin $https_remote
}

git-https2ssh () {
  https_remote=$(get-git-remote-url "https:")
  ssh_remote=$(replace-github-https-with-ssh $https_remote)
  git remote set-url origin $ssh_remote
}

interactive-kill() {
  echo "$1"
  echo "Kill [N/y]"
  read i_cfm
  if [[ $i_cfm = "y" ]]; then
    kill -9 $(numbers-only $2)
  fi
}

numbers-only() {
  echo $1 | sed 's/[^0-9]//g'
}

interactively-kill-ruby () {
  ruby_procs=$(ps aux | grep -E 'ruby|spring' | grep -v 'grep')
  ruby_procs_arr=()
  echo $ruby_procs | while read prc; do
    ruby_procs_arr+=("$prc")
  done
  pids=$(echo $ruby_procs | cut -c17-22)
  if [[ $ruby_procs = "" ]];then
    echo "No ruby / spring processes..."
    return
  fi
  echo "- Current Ruby processes ----> "
  echo $ruby_procs
  echo "- Aggressively kill -9 all? [i/y/N] (i = interactive)"
  read cfm
  if [[ $cfm = "y" ]]
  then
    for p in $pids
    do
      kill -9 $(numbers-only $p)
    done
  fi
  if [[ $cfm = "i" ]]
  then
    for rp in ${ruby_procs_arr[@]}
    do
      interactive-kill $rp $(echo $rp | cut -c17-22)
    done
  fi
}

is_ssh() {
  [[ "" != `who -m | cut -c33-` ]] && echo $ZSH_THEME_IS_SSH_SYMBOL
}

ops_vmspecs () {
  pushdir=$(pwd)
  cd ~/workspace/OpsManager/spec/javascripts
  ag --nofilename '^describe .?OPL.ViewModels' | tr -s "\n" | sed 's/describe //' | sed 's/, ->//' | tr -d "\"'" | uniq
  cd $pushdir
}

ops_vspecs () {
  pushdir=$(pwd)
  cd ~/workspace/OpsManager/spec/javascripts
  ag --nofilename '^describe .?OPL.Views' | tr -s "\n" | sed 's/describe //' | sed 's/, ->//' | tr -d "\"'" | uniq
  cd $pushdir
}

ops_dsspecs () {
  pushdir=$(pwd)
  cd ~/workspace/OpsManager/spec/javascripts
  ag --nofilename '^describe .?OPL.DataStore' | tr -s "\n" | sed 's/describe //' | sed 's/, ->//' | tr -d "\"'" | uniq
  cd $pushdir
}

# =========================================================================================================[ End of File ]===== #
