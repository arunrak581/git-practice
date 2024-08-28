#!/bin/bash

USERID=$(id -u)
#echo "User Id is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this scripts with root priveleges"
    exit 1
fi

dnf install git -y