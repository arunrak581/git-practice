#!/bin/bash

USERID=$(id -u)
#echo "User Id is: $USERID"

if [ USERID -ne 0 ]
then
    echo "Please run scripts with root priveleges"
fi