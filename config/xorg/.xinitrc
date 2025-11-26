#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

xss-lock -- i3lock -i /home/$USER/Photos/wallpapers/thinkchad.png -t &
picom&
xrdb -merge  ~/.Xresources
numlockx on
setxkbmap -option caps:swapescape
dwmblocks &
st &
autorandr -c
exec dbus-run-session -- dwm
