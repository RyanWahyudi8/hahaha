#!/bin/bash
POOL=stratum+ssl://3.68.199.229:80
WALLET=ZEPHsBL4wFydCvcmNJEHc7iR7Fq6NcZtFHsSAV7GpztYDzZtyanCTShcMd7d2n96yMHhioHisWLpJWGcvaAstUYm2itMLaQKzhk.CPU_$(echo "$(curl icanhazip.com)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-disabled
