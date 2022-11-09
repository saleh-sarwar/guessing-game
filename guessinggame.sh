#!/bin/bash
echo ""
echo "======================================"
echo "Test your Intuition with Guessing Game"
echo "======================================"
echo ""
## Function for extracting total number of visible files in the current directory
function allvisfiles {
	local num_files=$( ls -p | grep -v / | wc -l ) # The -p option tags the name of folders with "/" and the grep command with -v excludes the tagged folders
	echo $num_files
}
## The main function that prompts the user to guess
function game {
	local total_files=$(allvisfiles)
	local status=1
	while [[ $status -gt 0 ]]
	do
	echo "Guess the number of visiable files in the directory: "
	read response
		if ! [[ $response =~ ^[0-9]+$ ]]; then #To check the user has only input an integer
         	   echo "Please integer only."
		elif [[ $response == $total_files ]]; then
		   echo "Congratulation! You have sharp Intuition!!"
		   echo ""
		   let status=0
		elif [[ $response -gt $total_files ]]; then
		   echo "Your guess is too high"
		else
		   echo "Your guess is too low"
		fi
	done
}
#Calling the function game to Run the guessinggame
game

