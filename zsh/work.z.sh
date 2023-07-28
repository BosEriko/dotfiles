
# ============================================================================= [Work Alias] ===== #

SATURN_URL="http://localhost:3000"
SATURN_PATH="~/Documents/Codes/Work/resonate/saturn"
SATURN_TMUX_PATH="~/.files/tmux/workspace/saturn.tmux.sh"

alias work:saturn="cd ${SATURN_PATH} && tmux source-file ${SATURN_TMUX_PATH}"
alias work:saturn:start="cd ${SATURN_PATH}; wslview ${SATURN_URL}; echo ${PASSWORD} | sudo -S service postgresql start; echo ${PASSWORD} | sudo -S service redis-server start && bin/dev;"
alias work:saturn:console="cd ${SATURN_PATH} && rails c"
alias work:saturn:sidekiq="cd ${SATURN_PATH} && bundle exec sidekiq"
alias work:saturn:install="cd ${SATURN_PATH} && bundle install && yarn install"

alias work:saturn:console:staging="cd ${SATURN_PATH} && heroku run rails c --app saturncms-staging"
alias work:saturn:console:qa="cd ${SATURN_PATH} && heroku run rails c --app apmc-allrs-qa"
alias work:saturn:console:prod="cd ${SATURN_PATH} && heroku run rails c --app apmc-allrs-prod"
alias work:saturn:console:pre-prod="cd ${SATURN_PATH} && heroku run rails c --app apmc-allrs-pre-prod"

alias work:saturn:logs:staging="cd ${SATURN_PATH} && heroku logs --tail --app saturncms-staging"
alias work:saturn:logs:qa="cd ${SATURN_PATH} && heroku logs --tail --app apmc-allrs-qa"
alias work:saturn:logs:prod="cd ${SATURN_PATH} && heroku logs --tail --app apmc-allrs-prod"
alias work:saturn:logs:pre-prod="cd ${SATURN_PATH} && heroku logs --tail --app apmc-allrs-pre-prod"

REFERSCOUT_URL="http://r-scout.lvh.me:3000/login"
REFERSCOUT_PATH="~/Documents/Codes/Work/referscout"
REFERSCOUT_TMUX_PATH="~/.files/tmux/workspace/referscout.tmux.sh"

alias work:referscout="cd ${REFERSCOUT_PATH} && tmux source-file ${REFERSCOUT_TMUX_PATH}"
alias work:referscout:start="cd ${REFERSCOUT_PATH}; wslview ${REFERSCOUT_URL}; echo ${PASSWORD} | sudo -S service postgresql start; echo ${PASSWORD} | sudo -S service redis-server start; bin/rails server;"
alias work:referscout:console="cd ${REFERSCOUT_PATH} && rails c"
alias work:referscout:sidekiq="cd ${REFERSCOUT_PATH} && bundle exec sidekiq"
alias work:referscout:webpack="cd ${REFERSCOUT_PATH} && bin/webpack-dev-server"
alias work:referscout:install="cd ${REFERSCOUT_PATH} && bundle install && yarn install"

work:help() {
  (cd ~; figlet 'Work' | lolcat && echo -e $WORK_HELP_MESSAGE;)
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
    saturn:console:staging      Start Saturn console (Staging)
    saturn:console:qa           Start Saturn console (QA)
    saturn:console:prod         Start Saturn console (Prod)
    saturn:console:pre-prod     Start Saturn console (Pre-prod)
    saturn:logs:staging         Open Saturn logs (Staging)
    saturn:logs:qa              Open Saturn logs (QA)
    saturn:logs:prod            Open Saturn logs (Prod)
    saturn:logs:pre-prod        Open Saturn logs (Pre-prod)

    referscout                  Open ReferScout workspace
    referscout:start            Start ReferScout
    referscout:console          Start ReferScout console
    referscout:sidekiq          Start ReferScout sidekiq
    referscout:webpack          Start ReferScout webpack
    referscout:install          Install Saturn dependencies

"
