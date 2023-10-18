
# =================================================================== [Docker-compose Alias] ===== #

alias dr:start="sudo service docker start"
alias dr:bash="sudo docker-compose exec web bash"
alias dr:web="sudo docker-compose run web"
alias dr:console="sudo docker-compose exec web rails c"
alias dr:up="sudo docker-compose up"
alias dr:down="sudo docker-compose down"
alias dr:down:volume="sudo docker-compose down --volumes"
alias dr:restart="sudo docker-compose down && sudo docker-compose up"
alias dr:build="sudo docker-compose build"
alias dr:install="sudo docker-compose down && sudo docker-compose run web bundle install && sudo docker-compose up --build"
alias dr:reset="sudo docker-compose run web rake db:schema:load"

dr:help() {
  (cd ~; figlet 'Docker' | lolcat && echo -e $DOCKER_HELP_MESSAGE;)
}

DOCKER_HELP_MESSAGE="

    This is a helper showing all your Docker custom commands.


    Usage: dr:[option]

${B_GREEN}
    Options:                    Description:
${RESET}

    start                       Start Docker
    bash                        Start Bash for the current container
    web                         Run commands inside docker
    console                     Start Rails console for the current container
    up                          Start the current container
    down                        Stop the current container
    down:volume                 Stop the current volumes
    restart                     Restart the current container
    build                       Build the current container
    install                     Install Gems automatically
    reset                       Reset from schema

"
