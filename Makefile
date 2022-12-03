SHELL := /bin/bash
# docker commands
build:
	docker-compose build
up-silent:
	docker-compose up -d
up:
	docker-compose up
stop:
	docker-compose stop
remove:
	docker-compose rm -f

# wallet command
wallet:
	docker exec -it diardi ./scala-wallet-cli --testnet

.PHONY: build up-silent up stop remove wallet