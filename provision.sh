########################################

sudo apt-get update
sudo apt-get upgrade

########################################
# Install software essentials
########################################

sudo apt-get install -y --force-yes \
ubuntu-desktop
dkms
virtualbox-guest-additions
build-essential
git \
curl \
zsh \
gnome-terminal \

########################################
## Docker
########################################

curl -sSL https://get.docker.com/ubuntu/ | sudo sh
sudo adduser vagrant docker
