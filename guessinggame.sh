echo ""
echo "======================================"
echo "Test your Intuition with Guessing Game"
echo "======================================"
echo ""

function allvisfiles {
	local num_files=$( ls -p | grep -v / | wc -l )
	echo $num_files
}

function game {
	local total_files=$(allvisfiles)
	local status=1
	while [[ $status -gt 0 ]]
	do
	echo "Guess the number of visiable files in the directory: "
	read response
		if ! [[ $response =~ ^[0-9]+$ ]]; then
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
game

