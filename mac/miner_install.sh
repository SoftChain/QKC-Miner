#!/usr/bash

#Pull testnet image
echo "Setup environment for mining"
docker pull ninjaahhh/pyquarkchain:testnet2.3.1
docker run -it --name qkcminer -p 38291:38291 -p 38391:38391 -p 38491:38491 -p 38291:38291/udp ninjaahhh/pyquarkchain:testnet2.3.0 bash /code/pyquarkchain/quarkchain/tools/quick_miner_tool.sh
