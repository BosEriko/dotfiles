
# ============================================================================= [Work Alias] ===== #

workspace() {
  sudo service postgresql start
  sudo service redis-server start
  clear
  (cd ~; figlet 'When you enjoy what you do, work becomes play.' -f small | lolcat;)
  echo "Select Workspace:"
  echo "  1. Saturn"
  echo "  2. ReferScout"
  echo "Please choose 1 or 2:"
  read OPTION
  case "$OPTION" in
  "1")
    cd ~/Documents/Codes/Work/resonate/saturn
    ACTIVE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    git checkout development
    git pull origin development
    rails db:migrate RAILS_ENV=development
    bundle install
    yarn install
    git checkout $ACTIVE_BRANCH
    wslview http://localhost:3000
    tmux source-file ~/.files/tmux/workspace/saturn.tmux.sh
    ;;
  "2")
    cd ~/Documents/Codes/Work/referscout
    ACTIVE_BRANCH=$(git rev-parse --abbrev-ref HEAD)
    git checkout main
    git pull origin main
    rails db:migrate RAILS_ENV=development
    bundle install
    yarn install
    git checkout $ACTIVE_BRANCH
    wslview http://r-scout.lvh.me:3000/login
    tmux source-file ~/.files/tmux/workspace/referscout.tmux.sh
    ;;
  *)
    echo "Invalid selection."
    ;;
  esac
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
