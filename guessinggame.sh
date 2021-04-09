#!/bin/sh

gather_data()
{
        find . -maxdepth 1 | grep -Ecv "^.$"
}

guessing()
{
        answer="$1"
        printf "Guess the number of files in this directory: "
        read -r user_guess

        [ "$user_guess" -eq "$answer" 2>/dev/null ]

        case $? in
                (0)
                        echo "Correct!"
                        flag=false
                        ;;
                (1)
                        if [ "$user_guess" -gt "$answer" ]
                        then
                                echo "Too high!"
                        else
                                echo "Too Low!"
                        fi
                        ;;
                (2)
                        echo "Error: Please enter a digit"
                        ;;
        esac
}

answer="$(gather_data)"
while $flag; do
        guessing "$answer"
done

# vim:sw=8:ts=8:et:
