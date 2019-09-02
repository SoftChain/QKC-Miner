#!/usr/bash
QKC_CONFIG=`pwd`/mainnet/singularity/cluster_config_template.json ${PYTHON:=python3} quarkchain/tools/miner_address.py "$@"
0xe3bdb9ac4a2397118973565af9ffe99cee85a0110006569c
sudo docker exec -it miner python3 /code/pyquarkchain/quarkchain/tools/external_miner.py --config /code/pyquarkchain/mainnet/singularity/cluster_config_template.json --worker 1 --shard 393217 --host 172.16.16.7
