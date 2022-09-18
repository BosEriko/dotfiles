
# =================================================================== [Docker-compose Alias] ===== #

alias dr:start="sudo service docker start"
alias dr:bash="sudo docker-compose exec web bash"
alias dr:up="sudo docker-compose up"
alias dr:down="sudo docker-compose down"
alias dr:down:volume="sudo docker-compose down --volumes"
alias dr:restart="sudo docker-compose down && sudo docker-compose up"
alias dr:build="sudo docker-compose build"
alias dr:install="sudo docker-compose down && sudo docker-compose run web bundle install && sudo docker-compose up --build"
alias dr:reset="sudo docker-compose run web rake db:schema:load"
