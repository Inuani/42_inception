all: up

up:
	docker compose -f ./srcs/docker-compose.yml up -d 

down:
	docker compose -f ./srcs/docker-compose.yml down

start:
	docker-compose -f ./srcs/docker-compose.yml start

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

build:
	docker-compose -f ./srcs/docker-compose.yml build

ps:
	docker-compose -f ./srcs/docker-compose.yml ps

logs:
	docker-compose -f ./srcs/docker-compose.yml logs

fclean: down
	rm -rf ./home/egauthey/data/wordpress
	mkdir ./home/egauthey/data/wordpress
	rm -rf ./home/egauthey/data/mariadb
	mkdir ./home/egauthey/data/mariadb

re: fclean up

.PHONY: all up down start stop fclean build re ps logs