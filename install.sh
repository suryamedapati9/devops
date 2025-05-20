#!bin/bash
user=(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user -ne 0 ]
then
    echo -e "$R please run the command as root user $N"
    exit 1
else
    echo -e "$G Ececuting script as root user $N"
fi

dnf list installed sql

if [ $? -eq 0 ]
then
    echo "mysql is already installed"

else
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y 
    if [ $? -ne 0 ]
    then
        echo -e "Installing MySQL is ... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing MySQL is ... $G SUCCESS $N"
    fi
fi



