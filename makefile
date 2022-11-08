all: README.md

README.md: guessinggame.sh
	echo "# Capstone Project of course **The Unix Workbench**" > README.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/).*" >> README.md
	echo "**Description**: A program that prompt users to guess the number of files in the current directory until they guess correctly. For the incorrect answers, the users are given feedback whether the answer was too high or too low from the correct number of files. On answering correctly, the users are congratulated." >> README.md
	echo -n "**The Date and time on which this file was generated**:" >> README.md
	date >> README.md
	echo -n "**The number of coding lines in guessinggame.sh**:" >> README.md
	cat guessinggame.sh | grep [a-zA-Z\{\}] | wc -l >> README.md
clean:
	rm README.md
