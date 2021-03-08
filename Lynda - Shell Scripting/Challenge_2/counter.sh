#!usr/bin/env bash

# my version

NUM=$@

for NUMS in $NUM
do
  if [ $NUM -gt 0 ]
  then
    echo $NUM
  while [[ $NUM -lt 0 ]];
    do
    echo NUM = $NUM
    (($NUM++))
  done
  else
    echo "not a positive value"
  fi
  echo "Finished Loop"
done

# the proposed answer
COUNT=1
END=$1
while [ $COUNT -le $END ]
do
  echo "COUNT = $COUNT"
  ((COUNT++))
done

echo "Finished Loop"
