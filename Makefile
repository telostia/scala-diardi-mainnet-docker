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
scalad-spend:
	docker exec -it diardi ./scalad --testnet  --spendkey $(spend)
remove:
	docker-compose rm -f
# wallet commands
wallet:
	docker exec -it diardi ./scala-wallet-cli --testnet
wallet-backup:
	docker cp diardi:/root/$n.address.txt .
	docker cp diardi:/root/$n.keys .
wallet-copy:
	docker cp $n.address.txt diardi:/root/$n.address.txt
	docker cp $n.keys diardi:/root/$n.keys
# bash
bash:
	docker exec -it diardi bash
.PHONY: build up-silent up stop remove scalad wallet wallet-backup wallet-copy bash