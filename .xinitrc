#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


setxkbmap -model pc105 -layout us,us -variant ,intl -option grp:win_space_toggle -option ctrl:nocaps -option altwin:swap_lalt_lwin
feh --bg-scale /home/ainsoph/Pictures/DragonBall.jpg

# TODO: check if this one or the one on i3 config is the one starting xss-lock
xss-lock --tranfer-sleep-lock -- /usr/share/doc/xss-lock/transfer-sleep-lock-i3lock.sh &

exec picom &
exec i3
