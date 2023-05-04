DOCKERCMP_FILE=./srcs/docker-compose.yml
DATA_PATH=/Users/egauthey/data

all: up

up:
	docker compose -f ${DOCKERCMP_FILE} up -d --build

down:
	docker compose -f ${DOCKERCMP_FILE} down

start:
	docker compose -f ${DOCKERCMP_FILE} start

stop:
	docker compose -f ${DOCKERCMP_FILE} stop

build:
	docker compose -f ${DOCKERCMP_FILE} build

ps:
	docker compose -f ${DOCKERCMP_FILE} ps

logs:
	docker compose -f ${DOCKERCMP_FILE} logs

fclean:
	docker compose -f ${DOCKERCMP_FILE} down -v
	rm -rf ${DATA_PATH}/wordpress
	mkdir ${DATA_PATH}/wordpress
	rm -rf ${DATA_PATH}/mariadb
	mkdir ${DATA_PATH}/mariadb

re: fclean up

.PHONY: all up down start stop fclean build re ps logs
