#!/usr/bash

echo "Start mining..."
docker exec -it qkcminer quarkchain/tools/external_miner_manager.sh -c /code/pyquarkchain/testnet/2/cluster_config_template.json -p 8 -h localhost
