#!/usr/bin/env bash
# File: guessinggame.sh

#get the number of files in the directory and store as total
total=(`ls | wc -l`)

function verify {
    while [[ $response -ne $total ]]
    do
    echo "How many files are in this directory? Type in your guess and then press Enter:"
    read response
        if [[ $response -eq $total ]]
        then
            echo "Congratulations you guessed $total which was correct!"
        else
            if [[ $response -lt $total ]]
            then
                echo "Sorry your guess is to low, try again."
            else
                echo "Sorry your guess is to high, try again."
            fi
        fi
    done
}

verify