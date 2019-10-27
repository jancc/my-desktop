#!/bin/sh
SUDO=sudo
WLANNAME=`netctl list | dmenu`
if [ ! $WLANNAME ]; then
    $SUDO netctl stop-all
else
    $SUDO netctl start $WLANNAME
fi
