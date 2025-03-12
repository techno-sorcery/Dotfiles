#!/bin/sh
pkill compton
pkill xcompmgr
xrandr --output eDP-1 --mode 1280x720 --pos 0x90 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output DP-1-3.1 --primary --pos 1280x0 --mode 1920x1080 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output DP-1-4 --off --output DP-1-5 --off
xcompmgr &
hsetroot -tile $BG
xrdb -merge ~/Scripts/displays/docked_jhbi
