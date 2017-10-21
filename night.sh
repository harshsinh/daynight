#!/bin/bash
whichwall="${1:-grandcannight.jpg}"
default_add='file:///home/harsh/Pictures/daynight/'
image_add=$default_add$whichwall
echo $image_add
redshift -O 3500
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
gsettings set org.gnome.desktop.screensaver picture-uri $image_add
gsettings set org.gnome.desktop.background picture-uri $image_add
echo "Night-time settings in action"
