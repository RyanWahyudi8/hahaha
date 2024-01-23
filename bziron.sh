#!/bin/sh
POOL=stratum+ssl://3.68.199.229:443
ALGO=ironfish
WALLET=757ea84ec697775b5721d45cdc3a4e100ee0722a90ea359bcfd894f51c415b71+20491097150.GPU_$(echo "$(curl icanhazip.com)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./bzminer && clear && ./bzminer -a $ALGO -w $WALLET -p $POOL --nc 1  $@
