#!/usr/bash
echo "Stoping mining..."

sudo docker exec -it qkcminer bash quarkchain/tools/quick_miner_stoper.sh
sudo docker stop qkcminer
