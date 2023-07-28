
# ============================================================================= [Work Alias] ===== #

SATURN_URL="localhost:3000"

alias work:saturn:start="sudo service postgresql start && sudo service redis-server start && bin/dev && wslview ${SATURN_URL}"
alias work:saturn:console="rails c"
alias work:saturn:sidekiq="sidekiq"
alias work:saturn:install="bundle install && yarn install"

alias work:saturn:console:staging="heroku run rails c --app saturncms-staging"
alias work:saturn:console:qa="heroku run rails c --app apmc-allrs-qa"
alias work:saturn:console:prod="heroku run rails c --app apmc-allrs-prod"
alias work:saturn:console:pre-prod="heroku run rails c --app apmc-allrs-pre-prod"

alias work:saturn:logs:staging="heroku logs --tail --app saturncms-staging"
alias work:saturn:logs:qa="heroku logs --tail --app apmc-allrs-qa"
alias work:saturn:logs:prod="heroku logs --tail --app apmc-allrs-prod"
alias work:saturn:logs:pre-prod="heroku logs --tail --app apmc-allrs-pre-prod"

REFERSCOUT_URL="http://r-scout.lvh.me:3000/login"

alias work:refer:start="sudo service postgresql start && sudo service redis-server start && bin/rails server && wslview ${REFERSCOUT_URL}"
alias work:refer:console="rails c"
alias work:refer:sidekiq="sidekiq"
alias work:refer:webpack="bin/webpack-dev-server"
alias work:refer:install="bundle install && yarn install"

work:help() {
  (cd ~; figlet 'Work' | lolcat && echo -e $WORK_HELP_MESSAGE;)
}

WORK_HELP_MESSAGE="

    This is a helper showing all your Work custom commands.


    Usage: work:[option]

${B_GREEN}
    Options:                    Description:
${RESET}

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

    refer:start                 Start ReferScout

"
