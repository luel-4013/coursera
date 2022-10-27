#!/bin/bash

clear

value=`ls | wc -l`

ask_user() {
	echo "guess the number of files"
	read nofiles
}
ask_user
while (( $nofiles != $value ));
do
	if (( $nofiles > $value  )); 
	then
		echo "too high!"
		ask_user
	elif (( $nofiles < $value )); 
	then
		echo "too low!"
		ask_user
	fi	
done
echo "correct answer!"
