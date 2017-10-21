#!/bin/bash
# Installation script for daynight.
# Finding Shell and all
for i in $(echo $SHELL | tr "/" "\n")
do
	temp=$i
done
shellrc=${HOME}/.${temp}rc
echo $shellrc
dir=`pwd`
echo "source ${dir}/daynight.sh" >> ${shellrc}
echo "alias day='source ${dir}/day.sh'" >> ${shellrc}
echo "alias night='source ${dir}/night.sh'" >> ${shellrc}
