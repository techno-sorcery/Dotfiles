#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

# Graphics
xss-lock -- i3lock -i /home/$USER/Photos/wallpapers/Jaded.png -t &
picom &
hsetroot -cover $BG
xrdb -merge  ~/.Xresources
autorandr -c

xcorners -b -r 15 &
(
    while true; do
        # Search for xcorners and explicitly raise it above everything every 0.5 seconds
        if xdotool search --class "xcorners" >/dev/null 2>&1; then
            xdotool search --class "xcorners" windowraise
        fi
        sleep 1
    done
) &

# Input
numlockx on
setxkbmap -option caps:swapescape

dwmblocks &
st &
# dunst &
vivaldi-stable &
thunderbird &

exec dbus-run-session -- dwm 

