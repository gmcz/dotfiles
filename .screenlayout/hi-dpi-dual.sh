#!/bin/sh
xrandr --output VGA-1 --off --output LVDS-1 --mode 1600x900 --pos 3840x1256 --rotate normal --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --off --output DP-3 --off --output DP-2 --off --output DP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal;
i3-msg restart
