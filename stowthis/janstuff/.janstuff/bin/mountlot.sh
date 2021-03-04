#!/bin/sh
SUDO=sudo
MOUNTPOINT=$HOME/lot

function mount {
    UUID=679cb58e-fef9-4cb0-88ff-a60fcf5aa9c4

    $SUDO cryptsetup luksOpen UUID=$UUID cryptlot
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

