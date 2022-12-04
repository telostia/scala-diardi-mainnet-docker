SHELL := /bin/bash
# docker commands
build:
	docker-compose build
up:
	docker-compose up -d
stop:
	docker-compose stop
scalad:
	docker exec -it diardi ./scalad --testnet
remove:
	docker-compose rm -f
# wallet commands
wallet:
	docker exec -it diardi ./scala-wallet-cli --testnet
wallet-backup:
	docker cp diardi:$n.address.txt .
	docker cp diardi:$n.keys .
wallet-copy:
	docker cp $n.address.txt diardi:$n.address.txt
	docker cp $n.keys diardi:$n.keys
# bash
bash:
	docker exec -it diardi bash
.PHONY: build up-silent up stop remove scalad wallet wallet-backup wallet-copy bash