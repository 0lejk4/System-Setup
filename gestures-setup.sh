#!/bin/sh

sudo apt install python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject

git clone https://github.com/bulletmark/libinput-gestures.git libinput
( cd libinput ; sudo ./libinput-gestures-setup install )
# UI client for configuring gestures
git clone https://gitlab.com/cunidev/gestures gestures
( cd gestures ; sudo python3 setup.py install )

echo "# Swipe threshold (0-100)
swipe_threshold 0

# Gestures
gesture swipe right 3 xdotool key ctrl+alt+t
gesture swipe down 3 xdotool key ctrl+alt+Down
gesture swipe left 3 xdotool key super+e
gesture swipe up 3 xdotool key alt+F4" > $HOME/.config/libinput-gestures.conf