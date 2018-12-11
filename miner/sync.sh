#!/usr/bash
echo "Syncing block, it won't take too long"
docker exec -it qkcminer pypy3 quarkchain/cluster/cluster.py --cluster_config /code/pyquarkchain/testnet/2/cluster_config_template.json

#Not pass test
docker exec -it qkcminer curl https://s3-us-west-2.amazonaws.com/testnet2/data/22/`curl https://s3-us-west-2.amazonaws.com/testnet2/data/22/LATEST`.tar.gz --output data.tar.gz | tar xvfz data.tar.gz
mv data /path/to/data
