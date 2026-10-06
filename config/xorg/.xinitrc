#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

# sleep 0.1

# Graphics
xss-lock -- i3lock -i /home/$USER/Photos/wallpapers/Jaded.png -t &
picom &
xcorners -b -r 10 &
hsetroot -cover $BG
xrdb -merge  ~/.Xresources
autorandr -c

# Input
numlockx on
setxkbmap -option caps:swapescape

dwmblocks &
st &
dunst &
vivaldi-stable &
thunderbird &

exec dbus-run-session -- dwm 

