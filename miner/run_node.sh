#!/usr/bash
echo Fill QKC miner miner address
pypy3 quarkchain/tools/miner_address.py
#Run cluster to sync block data from testnet
#It will take an hour long or longer!
echo Syncing block, it won't too long
pypy3 quarkchain/cluster/cluster.py --cluster_config /code/pyquarkchain/testnet/2/cluster_config_template.json
