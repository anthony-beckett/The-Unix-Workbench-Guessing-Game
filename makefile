all:
	printf "# The Unix Workbench Guessing Game\n" > README.md
	date >> README.md
	echo >> README.md
	cat ./guessinggame.sh | wc -l >> README.md

.PHONY: all
