#!/bin/bash



echo -e "\nWelcome to the Multiplication Quiz!!\n"

sleep 2

playerscore=0

randomnumber1=0
randomnumber2=0

read -p "Enter a number to go up to, 0 -> your choice    " val

while true; do

    echo -e "\nEnter 1 to begin round, any other number to exit game and display score\n   "
    read choice
    if [ "$choice" -eq 1 ]; then
        echo -e "\nBeginning round\n"
        sleep 2
        randomnumber1=$(shuf -i 2-$val -n 1)
        randomnumber2=$(shuf -i 2-$val -n 1)
        echo -e "\nWhat is the result of $randomnumber1 x $randomnumber2\n"
        result=$((randomnumber1 * randomnumber2))
        read answer
        if [ "$answer" -eq "$result" ]; then
            ((playerscore++))
            echo -e "\nCorrect! You earn one point!\n"
            sleep 2
        else
            echo -e "\nIncorrect! You lost one point!\n"
            ((playerscore--))
            sleep 2
        fi
        echo -e "\n\nYour current score : $playerscore points\n\n"
        sleep 1
    else
        break
    fi

done
