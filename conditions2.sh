#!/bin/bash

usr=$(id -u)
echo "user is $usr"
echo "pid is $PWD"
echo "Home directory of user: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of last command in background: $!"
colours=("red" "blue" "green")
echo "${colours[0]} | ${colours[@]}"

MOVIES=("Court" "HIT3" "PUSHPA2" "Thandel")

echo "First Movie: ${MOVIES[0]}"
echo "First Movie: ${MOVIES[3]}"
echo "First Movie: ${MOVIES[4]}"

echo "All movies: ${MOVIES[@]}"
# if [ $number1 -eq $number2 ]

# then
#     echo "both numbers are equal"

# else

#     echo "numbers are not equal"

# fi
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e "$R ERROR:: Please run this script with root access $G"

MOVIES=("Court" "HIT3" "PUSHPA2" "Thandel")

echo "First Movie: ${MOVIES[0]}"
echo "First Movie: ${MOVIES[3]}"
echo "First Movie: ${MOVIES[4]}"

echo "All movies: ${MOVIES[@]}"

# for movie in $@
# do 
#     echo -e "$Y $movie $N  is good"
# done


for i in ${MOVIES[@]}
do
    echo $i

done