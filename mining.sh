#!/usr/bash

echo docker ps -a
echo docker exec -it <container ID> quarkchain/tools/external_miner_manager.sh -c /code/pyquarkchain/testnet/2/cluster_config_template.json -p 9 -t 1 -h localhost
