########################################
# Provisioning Script for Ubuntu Dev Env
########################################
sudo apt-get update
sudo apt-get upgrade

########################################
# Install software essentials
########################################
sudo apt-get install -y --force-yes \
build-essential \
ubuntu-desktop \
linux-headers-server \
dkms \
virtualbox-guest-x11 \
git \
curl \
zsh \
gnome-terminal \

########################################
# Docker
########################################
curl -sSL https://get.docker.com/ubuntu/ |
sudo adduser vagrant docker

########################################
# ZSH
########################################
sudo curl -L http://install.ohmyz.sh | sh

########################################
# Emacs
########################################
sudo add-apt-repository ppa:cassou/emacs
sudo apt-get update
sudo apt-get install emacs24
