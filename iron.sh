#!/bin/bash
POOL=stratum+ssl://20.124.247.146:80
ALGO=IRONFISH
WALLET=757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71+20491097150.ANDIKA$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./lolMiner && clear && ./lolMiner --algo $ALGO --pool $POOL --user $WALLET $@
