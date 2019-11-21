#!/usr/bin/env bash

function guessinggame {
	files_num=$(find -type f | wc -l)

	echo "Guess the number of files in your current directory. Enter a number. e.g.1, 2, 3...etc:"
	read number

	until [ $number -eq $files_num ]
	do
  	if [ $number -gt $files_num ]
  	then
    	  echo "The number you guessed was too high, please try a lower number:"
    	  read number
  	else
    	  echo "The number you guessed was too low, please try a higher number:"
    	  read number
  	fi
	done
	echo "Congragulations!! You guessed the correct number of files."
}

echo "Let's play a game. It's called the guessing game."
guessinggame
echo "Game over!!"

