# Virtual Ubuntu

An Ubuntu Unity Desktop for general development running under Vagrant

![](https://github.com/owainlewis/virtual-ubuntu/blob/master/screenshots/preview.png)

# Use

```

vagrant up
# Virtual Box issue 
vagrant ssh -c 'sudo ln -s /opt/VBoxGuestAdditions-4.3.28/lib/VBoxGuestAdditions/ /usr/lib/VBoxGuestAdditions'
vagrant reload
