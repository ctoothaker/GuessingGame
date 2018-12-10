all: README.md

README.md:
	touch README.md
	echo "# Guessing Game" > README.md
	echo "The make command was run on $(shell date '+%d/%m/%y') at $(shell date '+%H:%M:%S')." >> README.md
	echo "The guessinggame.sh file contains $(shell wc -l guessinggame.sh | egrep -o '[0-9]+') lines." >> README.md

clean:
	rm README.md
