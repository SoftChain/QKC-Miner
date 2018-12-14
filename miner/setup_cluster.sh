#!/usr/bash
echo "Fill QKC miner miner address"
docker exec -it qkcminer pypy3 /code/pyquarkchain/quarkchain/tools/miner_address.py

echo "Syncing block, it won't take too long"
docker exec -it qkcminer python3 quarkchain/cluster/cluster.py --cluster_config /code/pyquarkchain/testnet/2/cluster_config_template.json
