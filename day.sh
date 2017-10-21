#!/bin/bash
whichwall="${1:-grandcanday.jpg}"
default_add='file:///home/harsh/Pictures/daynight/'
image_add=$default_add$whichwall
echo $image_add
redshift -x
gsettings set org.gnome.desktop.interface gtk-theme "Arc"
gsettings set org.gnome.desktop.screensaver picture-uri $image_add
echo "Daytime settings applied"
