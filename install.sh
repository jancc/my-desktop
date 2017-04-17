#/bin/sh
mkdir -p ~/.janstuff
cp click.wav ~/.janstuff/click.wav
cp wallpaper.jpg ~/.janstuff/wallpaper.jpg
mkdir -p ~/.config/i3
cp i3-config ~/.config/i3/config
mkdir -p ~/.config/i3status
cp i3status-config ~/.config/i3status/config
cp redshift.conf ~/.config/redshift.conf
cp irssi-config ~/.irssi/config
sudo install pulseaudio-set-all-sink-inputs.sh /usr/local/bin/pulseaudio-set-all-sink-inputs
sudo install brightness.sh /usr/local/bin/brightness-set
sudo install x11-enable-screensaving.sh /usr/local/bin/x11-enable-screensaving
sudo install x11-disable-screensaving.sh /usr/local/bin/x11-disable-screensaving
