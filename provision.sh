#!usr/bin/env bash

########################################

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y --force-yes ubuntu-desktop

########################################
# Install software essentials
########################################

sudo apt-get install -y \
git \
curl \
zsh \
gnome-terminal

########################################
## Docker
########################################

curl -sSL https://get.docker.com/ubuntu/ | sudo sh
sudo adduser vagrant docker
