#!/usr/bash
echo "Syncing block, it won't take too long"

#Sync Block Date with 12hours snapshot
curl https://s3-us-west-2.amazonaws.com/testnet2/data/22/$(curl -s https://s3-us-west-2.amazonaws.com/testnet2/data/22/LATEST).tar.gz --output data.tar.gz && tar xvfz data.tar.gz
docker run -v /path/to/data:/code/pyquarkchain/quarkchain/cluster/data -it qkcminer
