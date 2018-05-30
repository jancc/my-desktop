#/bin/sh
mkdir -p ~/.janstuff
ln -f -s $PWD/click.wav ~/.janstuff/click.wav
ln -f -s $PWD/drip.ogg ~/.janstuff/drip.ogg
ln -f -s $PWD/wallpaper.jpg ~/.janstuff/wallpaper.jpg
mkdir -p ~/.config/i3
ln -f -s $PWD/i3-config ~/.config/i3/config
mkdir -p ~/.config/i3status
ln -f -s $PWD/i3status-config ~/.config/i3status/config
ln -f -s $PWD/redshift.conf ~/.config/redshift.conf
ln -f -s $PWD/irssi-config ~/.irssi/config
ln -f -s $PWD/Xdefaults ~/.Xdefaults
ln -f -s $PWD/zshrc ~/.zshrc
ln -f -s $PWD/vimrc ~/.vimrc
ln -f -s $PWD/tmux.conf ~/.tmux.conf
ln -f -s $PWD/xinitrc ~/.xinitrc
ln -f -s $PWD/sway/sway.sh ~/sway.sh
chmod +x ~/sway.sh
ln -f -s $PWD/sway/config ~/.config/sway/config
sudo install pulseaudio-set-all-sink-inputs.sh /usr/local/bin/pulseaudio-set-all-sink-inputs
sudo install brightness.sh /usr/local/bin/brightness-set
sudo install x11-enable-screensaving.sh /usr/local/bin/x11-enable-screensaving
sudo install x11-disable-screensaving.sh /usr/local/bin/x11-disable-screensaving
sudo install ssh-tunnel.sh /usr/local/bin/ssh-tunnel
