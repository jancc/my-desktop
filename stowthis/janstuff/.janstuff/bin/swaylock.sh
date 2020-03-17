#!/bin/sh
grim /tmp/screen.png && convert /tmp/screen.png -scale 5% -scale 2000% /tmp/screen.png && swaylock -i /tmp/screen.png -f
