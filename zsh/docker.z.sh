
# =================================================================== [Docker-compose Alias] ===== #

alias dr-start="sudo service docker start"
alias dr-web="sudo docker-compose run web"
alias dr-up="sudo docker-compose up"
alias dr-down="sudo docker-compose down"
alias dr-restart="sudo docker-compose down && docker-compose up"
alias dr-build="sudo docker-compose down && sudo docker-compose run web bundle install && sudo docker-compose up --build"
alias dr-reset="sudo docker-compose run web rake db:schema:load"
