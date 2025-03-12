#!/bin/sh
pkill compton
pkill xcompmgr
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output DP-1-3.1 --primary --mode 1920x1200 --pos 2944x0 --rotate normal --output DP-1-3.2 --mode 1280x1024 --pos 4864x0 --rotate right --output DP-1-3.3 --mode 1280x1024 --pos 1920x0 --rotate left --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output DP-1-4 --off --output DP-1-5 --off
xcompmgr &
hsetroot -tile $BG
xrdb -merge ~/Scripts/displays/small

