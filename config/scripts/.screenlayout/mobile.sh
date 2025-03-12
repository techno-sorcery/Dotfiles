#!/bin/sh
pkill xcompmgr
pkill compton
compton --vsync opengl-swc --backend glx &
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output DP-1-3.1 --off --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output DP-1-4 --off --output DP-1-5 --off
hsetroot -cover $BG
xrdb -merge ~/.Xresources
