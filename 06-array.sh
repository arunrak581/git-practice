#!/bin/bash

# index starts from 0,size is 3
FRUITS=("APPLE" "KIWI" "ORANGE") #array

echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is: ${FRUITS[1]}"
echo "third fruit is: ${FRUITS[2]}"

echo "First fruit is: ${FRUITS[@]}"