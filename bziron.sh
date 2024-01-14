#!/bin/sh
POOL=stratum+ssl://104.45.192.96:443
ALGO=ironfish
WALLET=757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71+20491097150.GPU_$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./bzminer && clear && ./bzminer -a $ALGO -w $WALLET -p $POOL --nc 1  $@
