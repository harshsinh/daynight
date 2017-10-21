#!/bin/bash
# Author : Harsh Sinha, driver script for the daynight program
# List of jpg day night wallpapers in my pictures folder
# The format for names is <nameString>day.jpg and <nameString>night.jpg
target=($(ls $HOME/Pictures/daynight/ | grep -E "*day.*" ))
temp='day'
wallpaper=()

# This loop extracts name string from the full name.
for i in {1..${#target[@]}}
do
	wallpaper[$i]=${target[$i]%${temp}.*}
done

# Loop for choosing one randomly and running in day and night loop
# executes once per half an hour
numWallP=${#wallpaper[@]}
while true;
do
	currHour=$(date '+%H')
	currHour=$((currHour+5))
	# rand gets a random number in the size of wallpaper array
	rand=$(( ( RANDOM % $numWallP ) + 1  ))
	echo ${wallpaper[$rand]}
	if [ $((currHour < 11)) -eq 1 ]; then
		source ~/scripts/night.sh ${wallpaper[$rand]}night.jpg
	else source ~/scripts/day.sh ${wallpaper[$rand]}day.jpg
	fi;
	sleep 1800;
done
