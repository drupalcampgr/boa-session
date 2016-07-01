# BOA Local
In order to install BOA on a local VM (eg Virtualbox) you need to do the
following steps:

## Generic steps
* Download and install Virtualbox
* Create a new VM
* * Assign 2GB of RAM if possible
* * Set the network in bridged mode under Network
* * Set the Paravirtualization Interface to 'Legacy' under System -> Acceleration
* Install Debian on the VM, no X is required, but add SSH
* Log into the VM and follow https://github.com/omega8cc/boa/blob/master/docs/INSTALL.txt#L86
* * You can log over SSH using the ip of the VM

## Linux/Mac specific steps
* Install DNSMASQ
* Edit /etc/dnsmasq.conf and add
 `address=/aegir.local/_VM_IP_`
 changing the line with the IP of your VM
* Add 127.0.0.1 as your primary DNS in your network settings
* Now you can access *.aegir.local domains from the browser
