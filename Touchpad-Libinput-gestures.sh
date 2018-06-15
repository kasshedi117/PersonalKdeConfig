#!bin/bash

sudo gpasswd -a $USER input
sudo apt-get install xdotool wmctrl libinput-tools
git clone http://github.com/bulletmark/libinput-gestures
sudo ./libinput-gestures/libinput-gestures-setup install
rm -rf libinput-gestures.

libinput-gestures-setup start

libinput-gestures-setup autostart

touch ~/.config/libinput-gestures.conf

echo "gesture swipe up      xdotool key super+r" >> ~/.config/libinput-gestures.conf
echo "gesture swipe down    xdotool key super+w" >> ~/.config/libinput-gestures.conf
echo "gesture swipe left    xdotool key super+v" >> ~/.config/libinput-gestures.conf
echo "gesture swipe right   xdotool key super+c" >> ~/.config/libinput-gestures.conf
echo "gesture pinch in      xdotool key super+s" >> ~/.config/libinput-gestures.conf
echo "gesture pinch out     xdotool key super+s" >> ~/.config/libinput-gestures.conf

libinput-gestures-setup restart


