#!/bin/bash
while read line
do
	echo $line
	git cherry-pick $line
	if [ $? != 0 ]
	then
		break
	fi
	sed -i 's/$line//' ../lge/hammerhead/log.log
done < ../lge/hammerhead/log.log
