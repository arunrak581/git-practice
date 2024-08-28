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
else
    echo "Git is already installed,noting to do"
    fi    