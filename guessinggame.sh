function  CountDirFiles {
	numFiles=0
	let numFiles=$(ls -l | wc -l | egrep -o '[0-9]+')
}

numFiles=0
guess=-1
regex="^[0-9]+$"

CountDirFiles

echo "How many files do you believe are in this directory?"

while [[ $guess -ne $numFiles ]]
do
	read guess

	if ! [[ $guess  =~ $regex ]]
	then
		echo "Please enter a valid number as your guess."
		continue
	fi

	if [[ $guess -eq $numFiles ]]
	then
		echo "Congratulations, that is correct!"
	elif [[ $guess -gt $numFiles ]]
	then
		echo "You have guessed too high, please try again."
	elif [[ $guess -lt $numFiles ]]
	then
		echo "You have guessed too low, please try again."
	fi
done
