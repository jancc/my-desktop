#!/bin/bash
SUDO=lxsudo
function mount {
    devices=$(lsblk -lp | grep "part *$" | awk '{print $1, "(" $4 ")"}')
    selected=$(echo "$devices" | dmenu -i | awk '{print $1}')
    if [ ! $selected ]; then
        exit 1
    fi
    path=$(echo "/mnt" | dmenu -i)
    if [ ! $path ]; then
        exit 1
    fi
    $SUDO mount -o uid=$(whoami) $selected $path
}

function unmount {
    devices=$(lsblk -lp | grep -v "part *$" | grep "part" | awk '{print $1, "(" $7 ")"}')
    selected=$(echo "$devices" | dmenu -i | awk '{print $1}')
    if [ ! $selected ]; then
        exit 1
    fi
    $SUDO umount $selected
}

if [ $1 ] && [ $1 == "-u" ]; then
    unmount
else
    mount
fi
