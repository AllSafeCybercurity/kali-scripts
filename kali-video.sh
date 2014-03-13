#!/bin/bash
. helper.sh

fglrx(){
    apt-get install fglrx-atieventsd fglrx-driver fglrx-control fglrx-modules-dkms -y
    fglrxinfo
    fgl_glxgears

    fglrxinfo
    fgl_glxgears

    aticonfig --initial -f
    xorg.conf file will be located at /etc/X11 folder.

    echo "Add radeon.modeset=0 in the end kernel command line in grub.cfg"
    #linux    /boot/vmlinuz-3.12-kali1-amd64 root=UUID=129deb3c-0edc-473b-b8e8-507f0f2dc3f9 ro initrd=/install/gtk/initrd.gz quiet radeon.modeset=0
}

nvidia(){
    echo "Add some code!"
    pause
}