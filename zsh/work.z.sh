
# ============================================================================= [Work Alias] ===== #

workspace() {
  sudo service postgresql start
  sudo service redis-server start
  sudo service docker start
  clear
  (cd ~; figlet 'When you enjoy what you do, work becomes play.' -f small | lolcat;)
  echo "Select Workspace:"
  echo "  1. Kuru Studio Social"
  echo "  2. ReferScout"
  echo "  3. Purrintables"
  echo "  4. Saturn"
  echo "Please choose between 1 to 4:"
  read OPTION
  case "$OPTION" in
  "1")
    workspace:kuru-studio-social
    ;;
  "2")
    workspace:referscout
    ;;
  "3")
    workspace:purrintables
    ;;
  "4")
    workspace:saturn
    ;;
  *)
    echo "Invalid selection."
    ;;
  esac
}

workspace:kuru-studio-social() {
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/web
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
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social/server
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
  cd ~/Documents/Codes/Work/kuru-studio/kuru-studio-social
  if [[ $(git rev-parse --abbrev-ref HEAD) == "master" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin master
      git stash apply
    else
      git pull origin master
    fi
  fi
  wslview http://localhost:3000
  tmux source-file ~/.files/tmux/workspace/kuru-studio-social.tmux.sh
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
  wslview http://r-scout.lvh.me:3000/login
  tmux source-file ~/.files/tmux/workspace/referscout.tmux.sh
}

workspace:purrintables() {
  echo "No commands yet."
}

workspace:saturn() {
  cd ~/Documents/Codes/Work/resonate/saturn
  if [[ $(git rev-parse --abbrev-ref HEAD) == "development" ]]; then
    if [[ `git status --porcelain` ]]; then
      git stash
      git pull origin development
      git stash apply
    else
      git pull origin development
    fi
    rails db:migrate RAILS_ENV=development
    bundle install
    yarn install
  fi
  wslview http://localhost:3000
  tmux source-file ~/.files/tmux/workspace/saturn.tmux.sh
}

heroku:saturn() {
  clear
  echo "Select agenda:"
  echo "  1. Console"
  echo "  2. Logs"
  echo "Please choose 1 or 2:"
  read OPTION
  case "$OPTION" in
  "1")
    heroku:saturn:console
    ;;
  "2")
    heroku:saturn:logs
    ;;
  *)
    echo "Invalid selection."
    ;;
  esac
}

heroku:saturn:console() {
  clear
  echo "Open Heroku console:"
  echo "  1. saturncms-staging"
  echo "  2. apmc-allrs-qa"
  echo "  3. apmc-allrs-prod"
  echo "  4. apmc-allrs-pre-prod"
  echo "Please choose between 1 to 4:"
  read OPTION
  case "$OPTION" in
  "1")
      heroku run rails c --app saturncms-staging
      ;;
  "2")
      heroku run rails c --app apmc-allrs-qa
      ;;
  "3")
      heroku run rails c --app apmc-allrs-prod
      ;;
  "4")
      heroku run rails c --app apmc-allrs-pre-prod
      ;;
  *)
      echo "Selection invalid."
      ;;
  esac
}

heroku:saturn:logs() {
  clear
  echo "Open Heroku logs:"
  echo "  1. saturncms-staging"
  echo "  2. apmc-allrs-qa"
  echo "  3. apmc-allrs-prod"
  echo "  4. apmc-allrs-pre-prod"
  echo "Please choose between 1 to 4:"
  read OPTION
  case "$OPTION" in
  "1")
      heroku logs --tail --app saturncms-staging
      ;;
  "2")
      heroku logs --tail --app apmc-allrs-qa
      ;;
  "3")
      heroku logs --tail --app apmc-allrs-prod
      ;;
  "4")
      heroku logs --tail --app apmc-allrs-pre-prod
      ;;
  *)
      echo "Selection invalid."
      ;;
  esac
}
