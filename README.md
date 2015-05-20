# Virtual Ubuntu

A Ubuntu Unity Desktop for programmers running under Vagrant

## Motivation

This is a clean slate Ubuntu development environment for day to day programming and development work. 

I want to make sure my entire development environment can be recreated quickly and easily.

![](https://github.com/owainlewis/virtual-ubuntu/blob/master/screenshots/preview.png)

# Use

```

vagrant up
# Virtual Box issue 
vagrant ssh -c 'sudo ln -s /opt/VBoxGuestAdditions-4.3.28/lib/VBoxGuestAdditions/ /usr/lib/VBoxGuestAdditions'
vagrant reload
