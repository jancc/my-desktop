#!/bin/sh
SUDO=sudo
MOUNTPOINT=$HOME/lot

function mount {
    devices=( $(lsblk -lp | grep "part *$" | awk '{print $1}') )

    if [ ${#devices[@]} -eq 0 ]; then
        echo "nothing to mount?"
        exit 1
    fi

    for i in ${!devices[*]}
    do
        printf "%2d: %s\n" $i ${devices[$i]}
    done

    printf "enter number of device: "
    read selected

    if [ ! $selected ]; then
        exit 1
    fi

    $SUDO cryptsetup luksOpen ${devices[$selected]} cryptlot
    $SUDO mount /dev/mapper/cryptlot $MOUNTPOINT
}

function unmount {
    $SUDO umount $MOUNTPOINT
    $SUDO cryptsetup luksClose cryptlot
}

if [ $1 ] && [ $1 == "-u" ]; then
    unmount
else
    mount
fi
