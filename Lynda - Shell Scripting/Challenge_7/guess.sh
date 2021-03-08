#!/usr/bin/env bash

# my Attempt
COMPUTE=50
PLAY=0
while [ $PLAYING -eq 0 ]
do
  read -p "What's your guess: " INPUT
  if [ $INPUT -eq $COMPUTER ]
  then
    echo "You've won, the number was $COMPUTER"
    exit 0
  elif [ $INPUT -lt $COMPUTER ]
  then
    echo "You're too low"
  else
    echo "You're too high"
  fi
done


#his Attempt
COMPUTER=50
PLAYING=0
while [ $PLAYING -eq 0 ]
do
  read -p "What's your guess: " INPUT
  if [ $INPUT -eq $COMPUTER ]
  then
    echo "You've won, the number was $COMPUTER"
    exit 0
  elif [ $INPUT -lt $COMPUTER ]
  then
    echo "You're too low"
  else
    echo "You're too high"
  fi
done

exit 0
