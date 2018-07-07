README.md:
	touch README.md
	echo "# This is my peer review project" >> README.md
	echo "Run on: `date`" >> README.md
	echo "The number of lines in the program are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
