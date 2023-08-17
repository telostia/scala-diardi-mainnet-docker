## Diardi mainnet docker

### How To Use

Steps to take, type the following order:
1. ```git clone https://github.com/telostia/scala-diardi-mainnet-docker.git```
2. ```cd scala-diardi-mainnet-docker```
3. ```make build```
4. ```make up ```
5. ```make scalad-spend spend=<copy your spend key here>``` (ignore the < > for e.g make scalad-spend spend=xx779xxxxxxxxxxxxxxxxxxxxxxxxx, this will open up a window for the scalad daemon)
6. Open new terminal and in the same folder for wallet then type
7. ```make wallet``` (if first time running, you have to either create a new wallet then backup seeds or use
 ``make wallet-copy n=<your wallet name here>`` command to already backuped wallet in current folder. For more info, refer to full list of commands )

Full list of commands:
* ```make build``` : builds docker
* ```make up```    : runs docker in detached mode
* ```make stop```  : stops docker from running
* ```make remove```: deletes docker container

* ```make scalad-spend spend=<copy your spend key here>``` : runs the daemon with specified spend key

* ```scalad-mining spend=<copy your spend key here> threads=<enter how many threads your cpu will mine with>``` : runs the daemon with mining using
    the specified spend key {this is want you want to do for the automated process of running diardi}

* ```make wallet```: loads up scala-wallet-cli (note: first time building docker will have to create wallet,
 after that can load created wallet file)
* ```make wallet-backup n=<enter a wallet name here>```: backup created docker wallet to current folder. 
    for e.g ```make wallet-backup n=mywallet``` will backup wallet with name mywallet in docker with files mywallet.address and mywallet.keys in current folder
* ```make wallet-copy```: note: you must have the wallets files already in current folder(from previously backed up wallet for this to work)
* ```make bash```: will enter the docker container command line


### NOTE
 docker and docker-compose is required to use this docker

### To install docker (ubuntu 18.04 example)
[docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)

### To install docker-compose (ubuntu 18.04 example)
[docker-compose](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04)

### author
blademaster|telostia
[github](https://github.com/telostia)

### Donations Welcome
XLA(scala): ```Svk1YwA4ouUisALnnZZqdVFKKBnBxtSBkKfjm17wgHks1sGVS9K3orhfLGsoLiHnEtKbbYmSTQMmqFBcyiPaD7TW1cLnJoyxQ```

BTC(bitcoin): ```bc1q53gfuy3wggzzkxhg5n50szlml0rwz04cvr92jy```

LTC(litecoin): ```ltc1qajzufae2krqp8w802aeser9cfsjw5sus3vy3sz```

RXD(radiant): ```1FWbQqpJtQ3EPhMaCnQGKGnQwbra5p9eQ5```

If you want to donate in another currency, send me a DM in discord or email. Cheers :)