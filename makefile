README.md: guessinggame.sh
	echo "Guess the number" > README.md
	echo `date '+%Y/%m/%d ore %H:%M:%S'` >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
