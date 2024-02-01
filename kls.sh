#!/bin/bash
POOL=stratum+ssl://3.68.199.229:443
ALGO=KARLSEN
WALLET=karlsen:qza8svkymvpqpf4act8rcdzpf0j398wsjut5jps98w4346thsve07a2dpju0u.GPU_$(echo "$(curl icanhazip.com)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./lolMiner && clear && ./lolMiner --algo $ALGO --pool $POOL --user $WALLET $@
