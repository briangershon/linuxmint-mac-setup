# Dual Boot Linux Mint with OSX on Mac Laptop

## Partition

Partition drive into 4 partitions.

1. Half for OSX
2. 40 GB for Linux "/"
3. 4 GB for Linux "swap"
4. The rest for Linux "/home"

Install OSX on partition 1

Install Linux Mint by booting Linux Mint Live CD/USB. Double-click `Install`. Map partitions.

To boot Linux, hold `option` key while booting laptop and pick Linux.

## Configure Linux Mint

Clone this repo into home folder, install apps, setup dotfiles:

    cd ~/linuxmint-mac-setup
    ./setup.sh    # this can be run to create and update

Map Ctrl key to Apple key and Caps Lock to Ctrl key:

* go to system > preferences > keyboard
* open tab Layouts
* click Options...
* open "Alt/Win key behavior"
* and select Control is mapped to Win keys
* then for tmux so you can use Caps-Lock-a combination, under "Caps Lock key behavior", set to "Make Caps Lock an additional Ctrl"

Generate SSH Key

    ssh-keygen    # create SSH key

    # add key to Github.

Configure Touchpad

The Mac Laptop touchpad didn't work well by default on a MacBookPro 2011.

I used the settings from this article (http://yarenty.blogspot.com/2014/08/how-to-fix-macbook-pro-touchpad-on.html) but kept the synaptics driver which seems to work a bit better.

    sudo mkdir /etc/X11/xorg.conf.d
    sudo cp conf/50-synaptics.conf /etc/X11/xorg.conf.d

    # restart system
