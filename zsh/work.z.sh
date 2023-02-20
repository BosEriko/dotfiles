
# ============================================================================= [Work Alias] ===== #

alias work:saturn:start="sudo service postgresql start && sudo service redis-server start && bin/dev"
alias work:saturn:console="rails c"
alias work:saturn:sidekiq="sidekiq"
alias work:saturn:install="yarn install"

work:help() {
  figlet 'Work' | lolcat && echo -e $WORK_HELP_MESSAGE
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

"
