#!/bin/bash
SUDO=sudo

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

    printf "enter target path (leave blank for \"/mnt\"): "
    read path

    if [ ! $path ]; then
        path="/mnt"
    fi

    $SUDO mount -o uid=$(whoami) ${devices[$selected]} $path
}

function unmount {
    devices=( $(lsblk -lp | grep -v "part *$" | grep "part" | awk '{print $1}') )
    echo $devices

    if [ ${#devices[@]} -eq 0 ]; then
        echo "nothing to unmount (wtf)?"
        exit 1
    fi

    for i in ${!devices[*]}
    do
        printf "%s: %s\n" $i ${devices[$i]}
    done

    printf "enter number of device: "
    read selected

    if [ ! $selected ]; then
        exit 1
    fi

    $SUDO umount ${devices[$selected]}
}

if [ $1 ] && [ $1 == "-u" ]; then
    unmount
else
    mount
fi
