#!/usr/bash

echo Updating System
sudo apt-get install update
sudo apt-get update

echo Installing docker
sudo apt install docker.io

echo Pulling Shell Script
git clone https://github.com/HangyuYe/QKC-Miner.git
cd QKC-Miner
git pull

echo Pulling image
sudo docker pull ninjaahhh/pyquarkchain:testnet2.4.0
sudo docker run -it --name qkcminer -p 38291:38291 -p 38391:38391 -p 38491:38491 -p 38291:38291/udp ninjaahhh/pyquarkchain:testnet2.4.0 bash /code/pyquarkchain/quarkchain/tools/quick_miner_tool.sh
