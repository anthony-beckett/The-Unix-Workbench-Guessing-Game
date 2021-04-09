all:
	echo "#The Unix Workbench Guessing Game" > README.md
	date >> README.md
	cat ./guessinggame.sh | wc -l >> README.md

.PHONY: all
