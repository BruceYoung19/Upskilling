#!/usr/bin/env bash

# my attempt

function GetFile(){
  echo "get files function"
  LIST="ls -l"
}

function ShowFile(){
  echo "show files function"
}

GetFile
ShowFile

# proposed Answer
function GetFiles(){
  FILES=`ls -1 | sort | head -10`
}

function ShowFiles(){
  local COUNT=1
  for FILE in $@
  do
    echo "FILE #$COUNT = $FILE"
    ((COUNT++))
  done
}

GetFiles
ShowFiles $FILES
exit 0
