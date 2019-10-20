#!/usr/bash

#Pull testnet image
echo "Setup environment for mining"
docker docker pull quarkchaindocker/pyquarkchain:mainnet1.3.0
docker run -it --name qkcminer -p 38291:38291 -p 38391:38391 -p 38491:38491 -p 38291:38291/udp quarkchaindocker/pyquarkchain:mainnet1.1.1
