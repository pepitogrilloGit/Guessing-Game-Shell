#!/bin/bash 
function sanitize() {
	if [[ -z $input ]]
	then
		echo "Please enter something!"
		return 1
	elif [[ ! $input =~ ^[0-9]*$ ]]
	then
		echo "Please enter only positive integers!"
		return 1
	else
		return 0
	fi
}
function checkInput() {
	if [[  $input -eq $totalFiles ]]
	then
		echo ""
		echo "Champagne!! You got it! There are $input files in the current directory"
		echo ""
		exit 0
	elif [[  $input -lt $totalFiles ]]
	then
		echo "You have to be more generous!"
	else
		echo "That is too high!"
	fi
}

totalFiles=$(ls -l . | wc -l)
if [[ -z $totalFiles || $totalFiles -eq 0 ]]
then 
	echo "No files in this directory, please change"
	exit 1
fi
echo ""
echo "Please guess how many files the current directory contains"
while read input
do
	sanitize
	if [[ $?  -eq 0 ]] 
	then
		checkInput
	fi
done
