#!/usr/bash
echo "Stoping mining..."

docker exec -it qkcminer bash quarkchain/tools/quick_miner_stoper.sh
docker stop qkcminer
