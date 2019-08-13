#!/usr/bash

 sudo docker exec -it cluster python3 /code/pyquarkchain/quarkchain/tools/external_miner.py --config /code/pyquarkchain/mainnet/singularity/cluster_config_template.json --worker 2 --shard 393217 458753 --host <Host IP>
