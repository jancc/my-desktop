#!/bin/sh
WPDIR="$HOME/.janstuff/wallpapers"

wallpaper=$(ls $WPDIR | sort -R | tail -n 1)
swaymsg output "*" background $WPDIR/$wallpaper fill
