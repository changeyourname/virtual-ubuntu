# Virtual Ubuntu

GUEST PROBLEMS

http://aruizca.com/steps-to-create-a-vagrant-base-box-with-ubuntu-14-04-desktop-gui-and-virtualbox/

A Ubuntu Unity Desktop for programmers running under Vagrant

## Motivation

This is a simple and portable Ubuntu development environment for day to day work. 

I want to make sure my entire development environment can be recreated quickly and easily.

![](https://github.com/owainlewis/virtual-ubuntu/blob/master/screenshots/preview.png)

# Use

```

vagrant up
# Virtual Box issue 
vagrant ssh -c 'sudo ln -s /opt/VBoxGuestAdditions-4.3.28/lib/VBoxGuestAdditions/ /usr/lib/VBoxGuestAdditions'
vagrant reload
