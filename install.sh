#/bin/sh
mkdir -p ~/.janstuff
cp click.wav ~/.janstuff/click.wav
cp i3-config ~/.config/i3/config
cp redshift.conf ~/.config/redshift.conf
sudo install pulseaudio-set-all-sink-inputs.sh /usr/local/bin/pulseaudio-set-all-sink-inputs

