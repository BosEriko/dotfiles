
# ============================================================================= [Work Alias] ===== #

workspace() {
  sudo service postgresql start
  sudo service redis-server start
  clear
  (cd ~; figlet 'When you enjoy what you do, work becomes play.' -f small | lolcat;)
  echo "Select Workspace:"
  echo "  1. Saturn"
  echo "  2. ReferScout"
  echo "Please choose between 1 to 2:"
  read OPTION
  case "$OPTION" in
  "1")
      cd ~/Documents/Codes/Work/resonate/saturn
      rails db:migrate RAILS_ENV=development
      bundle install
      yarn install
      wslview http://localhost:3000
      tmux source-file ~/.files/tmux/workspace/saturn.tmux.sh
      ;;
  "2")
      cd ~/Documents/Codes/Work/referscout
      rails db:migrate RAILS_ENV=development
      bundle install
      yarn install
      wslview http://r-scout.lvh.me:3000/login
      tmux source-file ~/.files/tmux/workspace/referscout.tmux.sh
      ;;
  *)
      echo "Invalid selection."
      ;;
  esac
}

SATURN_SELECTION="  1. saturncms-staging
  2. apmc-allrs-qa
  3. apmc-allrs-prod
  4. apmc-allrs-pre-prod"

SATURN_HEROKU_CONSOLE_MESSAGE="Open Heroku console:
${SATURN_SELECTION}
Please choose between 1 to 4:"

SATURN_HEROKU_LOGS_MESSAGE="Open Heroku logs:
${SATURN_SELECTION}
Please choose between 1 to 4:"

work-saturn-console() {
  echo $SATURN_HEROKU_CONSOLE_MESSAGE;
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

work-saturn-logs() {
  echo $SATURN_HEROKU_LOGS_MESSAGE;
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
