#!/bin/bash

USERID=$(id -u)
#echo "User Id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this scripts with root priveleges"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git is not installed,going to install it"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success,check it"
        exit 1
     else
        echo "Git installation is success"
    fi   
else
    echo "Git is already installed,noting to do"
fi    

