########################################
# Provisioning Script for Ubuntu Dev Env
########################################
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo apt-get update

########################################
# Install software essentials
########################################
sudo apt-get install -y --force-yes \
build-essential \
ubuntu-desktop \
virtualbox-guest-dkms \
git \
curl \
zsh

########################################
# ZSH
########################################
sudo curl -L http://install.ohmyz.sh | sh

sudo apt-get remove unity-webapps-common

# Disable Ubuntu search results from web
gsettings set com.canonical.Unity.Lenses remote-content-search none

echo 'Done'
