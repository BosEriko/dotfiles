# Docker-compose Alias
alias d-web="docker-compose run web"
alias d-up="docker-compose up"
alias d-down="docker-compose down"
alias d-build="docker-compose down && docker-compose run web bundle install && docker-compose up --build"
alias d-reset="docker-compose run web rake db:schema:load"