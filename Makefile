SHELL := /bin/bash
# docker commands
build:
	docker-compose build
up:
	docker-compose up -d
stop:
	docker-compose stop
scalad:
	docker exec -it diardi_mainnet ./scalad
scalad-spend:
	docker exec -it diardi_mainnet ./scalad --spendkey $(spend)
scalad-mining:
	docker exec -it diardi_mainnet ./scalad --spendkey $(spend) --start-mining $(threads)
remove:
	docker-compose rm -f
# wallet commands
wallet:
	docker exec -it diardi_mainnet ./scala-wallet-cli
wallet-backup:
	docker cp diardi_mainnet:/root/$n.address.txt .
	docker cp diardi_mainnet:/root/$n.keys .
wallet-copy:
	docker cp $n.address.txt diardi_mainnet:/root/$n.address.txt
	docker cp $n.keys diardi_mainnet:/root/$n.keys
# bash
bash:
	docker exec -it diardi_mainnet bash
.PHONY: build up-silent up stop remove scalad wallet wallet-backup wallet-copy bash
