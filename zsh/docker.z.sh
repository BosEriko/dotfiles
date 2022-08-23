
# =================================================================== [Docker-compose Alias] ===== #

alias dr-web="docker-compose run web"
alias dr-up="docker-compose up"
alias dr-down="docker-compose down"
alias dr-restart="docker-compose down && docker-compose up"
alias dr-build="docker-compose down && docker-compose run web bundle install && docker-compose up --build"
alias dr-reset="docker-compose run web rake db:schema:load"
