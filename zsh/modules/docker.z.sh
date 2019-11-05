
# =================================================================== [Docker-compose Alias] ===== #

## Ruby
alias dr-web="docker-compose run web"
alias dr-up="docker-compose up"
alias dr-down="docker-compose down"
alias dr-build="docker-compose down && docker-compose run web bundle install && docker-compose up --build"
alias dr-reset="docker-compose run web rake db:schema:load"

