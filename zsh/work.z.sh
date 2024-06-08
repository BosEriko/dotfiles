
# ============================================================================= [Work Alias] ===== #

workspace() {
  sudo service postgresql start
  sudo service redis-server start
  sudo service docker start
  sudo docker network prune -f
  sudo docker stop $(docker ps -aq)
  sudo docker rm $(docker ps -aq)
  clear
  (cd ~; figlet 'When you enjoy what you do, work becomes play.' -f small | lolcat;)
  echo "Select Workspace:"
  echo "  1. Kuru Studio Panel"
  echo "  2. Kuru Studio Network"
  echo "  3. Purrintables"
  echo "  4. ReferScout"
  echo "Please choose between 1 to 4:"
  read OPTION
  case "$OPTION" in
  "1")
    workspace:kuru-studio-panel
    ;;
  "2")
    workspace:kuru-studio-network
    ;;
  "3")
    workspace:purrintables
    ;;
  "4")
    workspace:referscout
    ;;
  *)
    echo "Invalid selection."
    ;;
  esac
}

workspace:kuru-studio-panel() {
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-panel
  if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin master
      git stash apply
    else
      git pull origin master
    fi
    yarn install
  fi
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-server
  if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin master
      git stash apply
    else
      git pull origin master
    fi
    sudo docker-compose run web rails db:migrate
    sudo docker-compose down
    sudo docker-compose run web bundle install
    sudo docker-compose build
  fi
  wslview http://localhost:3000
  tmux source-file ~/.files/tmux/workspace/kuru-studio-panel.tmux.sh
}

workspace:kuru-studio-network() {
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-network
  if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin master
      git stash apply
    else
      git pull origin master
    fi
    yarn install
  fi
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-server
  if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin master
      git stash apply
    else
      git pull origin master
    fi
    sudo docker-compose run web rails db:migrate
    sudo docker-compose down
    sudo docker-compose run web bundle install
    sudo docker-compose build
  fi
  wslview http://localhost:3000
  tmux source-file ~/.files/tmux/workspace/kuru-studio-network.tmux.sh
}

workspace:purrintables() {
  cd ~/Documents/Codes/Work/kuru-studio/purrintables
  if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin master
      git stash apply
    else
      git pull origin master
    fi
    yarn install
  fi
  wslview http://localhost:3000
  tmux source-file ~/.files/tmux/workspace/purrintables.tmux.sh
}

workspace:referscout() {
  cd ~/Documents/Codes/Work/referscout
  if [[ $(git rev-parse --abbrev-ref HEAD) == "develop" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin develop
      git stash apply
    else
      git pull origin develop
    fi
    rails db:migrate RAILS_ENV=development
    bundle install
    yarn install
  fi
  wslview https://r-scout.localhost.dev:3001/login
  tmux source-file ~/.files/tmux/workspace/referscout.tmux.sh
}

