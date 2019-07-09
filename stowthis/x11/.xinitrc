#!/bin/sh

export XDG_DATA_DIRS="/usr/share:/usr/local/share:$HOME/.local/share/applications:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"
export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_PUBLICSHARE_DIR="$HOME/Public"
export XDG_TEMPLATES_DIR="$HOME/Templates"
export XDG_VIDEOS_DIR="$HOME/Videos"

export _JAVA_AWT_WM_NONREPARENTING=1

export GTK_RC_FILES=/usr/share/themes/Arc-Dark/gtk-2.0/gtkrc
export GTK_THEME=Arc-Dark

unclutter &
redshift-gtk &
dwmstatus &
pactl upload-sample ~/.janstuff/drip.ogg volchange
setxkbmap -option caps:escape
#~/.janstuff/set-wallpaper.sh

exec dwm
