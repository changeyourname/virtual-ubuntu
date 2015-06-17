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
linux-headers-server \
dkms \
virtualbox-guest-x11 \
git \
curl \
zsh \
gnome-terminal

########################################
# ZSH
########################################
sudo curl -L http://install.ohmyz.sh | sh
