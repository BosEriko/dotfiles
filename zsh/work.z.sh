
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
      tmux source-file ~/.files/tmux/workspace/saturn.tmux.sh
      ;;
  "2")
      cd ~/Documents/Codes/Work/referscout
      rails db:migrate RAILS_ENV=development
      bundle install
      yarn install
      tmux source-file ~/.files/tmux/workspace/referscout.tmux.sh
      ;;
  *)
      echo "Invalid selection."
      ;;
  esac
}


SATURN_URL="http://localhost:3000"
SATURN_PATH="~/Documents/Codes/Work/resonate/saturn"

alias work:saturn:start="cd ${SATURN_PATH}; wslview ${SATURN_URL}; echo ${PASSWORD} | sudo -S service postgresql start; echo ${PASSWORD} | sudo -S service redis-server start && bin/dev;"
alias work:saturn:console="cd ${SATURN_PATH}; rails c;"
alias work:saturn:sidekiq="cd ${SATURN_PATH}; bundle exec sidekiq;"
alias work:saturn:install="cd ${SATURN_PATH}; rails db:migrate RAILS_ENV=development; bundle install; yarn install;"

REFERSCOUT_URL="http://r-scout.lvh.me:3000/login"
REFERSCOUT_PATH="~/Documents/Codes/Work/referscout"

alias work:referscout:start="cd ${REFERSCOUT_PATH}; wslview ${REFERSCOUT_URL}; echo ${PASSWORD} | sudo -S service postgresql start; echo ${PASSWORD} | sudo -S service redis-server start; bin/rails server;"
alias work:referscout:console="cd ${REFERSCOUT_PATH}; rails c;"
alias work:referscout:sidekiq="cd ${REFERSCOUT_PATH}; bundle exec sidekiq;"
alias work:referscout:webpack="cd ${REFERSCOUT_PATH}; bin/webpack-dev-server;"
alias work:referscout:install="cd ${REFERSCOUT_PATH}; rails db:migrate RAILS_ENV=development; bundle install; yarn install"

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

work:help() {
  (cd ~; figlet 'Work' | lolcat && echo -e $WORK_HELP_MESSAGE;)
}

work:saturn:heroku:console() {
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

work:saturn:heroku:logs() {
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

WORK_HELP_MESSAGE="

    This is a helper showing all your Work custom commands.


    Usage: work:[option]

${B_GREEN}
    Options:                    Description:
${RESET}

    saturn                      Open Saturn workspace
    saturn:start                Start Saturn
    saturn:console              Start Saturn console
    saturn:sidekiq              Start Saturn sidekiq
    saturn:install              Install Saturn dependencies
    saturn:heroku:console       Start Saturn console on Heroku
    saturn:heroku:logs          Open Saturn logs on Heroku

    referscout                  Open ReferScout workspace
    referscout:start            Start ReferScout
    referscout:console          Start ReferScout console
    referscout:sidekiq          Start ReferScout sidekiq
    referscout:webpack          Start ReferScout webpack
    referscout:install          Install Saturn dependencies

"
