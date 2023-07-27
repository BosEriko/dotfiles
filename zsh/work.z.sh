
# ============================================================================= [Work Alias] ===== #

SATURN_URL="localhost:3000"

alias work:saturn:start="sudo service postgresql start && sudo service redis-server start && bin/dev && wslview ${SATURN_URL}"
alias work:saturn:console="rails c"
alias work:saturn:sidekiq="sidekiq"
alias work:saturn:install="bundle install && yarn install"

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

    refer:start                 Start ReferScout

"
