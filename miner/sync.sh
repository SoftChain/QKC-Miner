#!/usr/bash
echo "Syncing block, it won't take too long"
docker exec -it qkcminer pypy3 quarkchain/cluster/cluster.py --cluster_config /code/pyquarkchain/testnet/2/cluster_config_template.json
