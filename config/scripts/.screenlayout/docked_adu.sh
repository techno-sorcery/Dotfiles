#!/bin/sh
pkill compton
pkill xcompmgr
xrandr --output eDP-1 --mode 1600x900 --pos 1920x422 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output DP-1-3.1 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output DP-1-2 --off --output DP-1-3 --off --output DP-1-4 --off --output DP-1-5 --off
xcompmgr &
light -S 100
hsetroot -fill $BG
xrdb -merge ~/Scripts/displays/small
