#!/usr/bash

#Check if Homebrew install or not
echo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#check update for Homebrew
echo brew update
#install docker from Homebrew
echo brew install docker
#install requir moduel
echo brew install pypy3 gmp pkg-config openssl
#Pull testnet image
echo docker pull ninjaahhh/pyquarkchain:testnet2.2.2
