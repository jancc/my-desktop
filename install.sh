#!/bin/sh
ln -f -s $PWD/irssi-config ~/.irssi/config
ln -f -s $PWD/vimrc ~/.vimrc
ln -f -s $PWD/tmux.conf ~/.tmux.conf
mkdir -p ~/.config/mpd
ln -f -s $PWD/mpd.conf ~/.config/mpd/mpd.conf
ln -f -s $PWD/fish ~/.config/fish
ln -f -s $PWD/urxvt ~/.urxvt
ln -f -s $PWD/Xdefaults ~/.Xdefaults
sudo install ssh-tunnel.sh /usr/local/bin/ssh-tunnel
