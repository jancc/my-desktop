#!/bin/sh
WPDIR="$HOME/.janstuff/wallpapers"
WPCMD="feh --bg-fill"

wallpaper=$(ls $WPDIR | sort -R | tail -n 1)
$WPCMD $WPDIR/$wallpaper
