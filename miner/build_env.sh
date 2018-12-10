#!/usr/bash

#check if Homebrew install or not
echo Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#check update for Homebrew
echo Checking Update for Homebrew
brew update

#Pull testnet image
echo Pull testnet image
docker pull ninjaahhh/pyquarkchain:testnet2.2.2
docker run -it -p 38291:38291 -p 38391:38391 -p 38491:38491 -p 38291:38291/udp ninjaahhh/pyquarkchain:testnet2.2.2
