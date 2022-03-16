 #!/bin/bash
#TODO- Welcome Message

#variables

#change directory for checking file names
cd /home/bruce/Documents

echo "Checking if the Projects folder has been created"
if [ -a /home/bruce/Documents/Projects ];
then
  echo "there is a file called Projects"
else
  echo "Project file does not exist"
  echo "Creating now"
fi

echo "Checking if the Design folder has been created"
if [ -a /home/bruce/Documents/Design ];
then
  echo "there is a file called Design"
else
  echo "Project Design does not exist"
  echo "Creating now"
  mkdir Design
fi

echo "Checking if the CV folder has been created"
if [ -a /home/bruce/Documents/Design ];
then
  echo "there is a file called CV Folder"
else
  echo "this CV folder does not exist"
  echo "Creating now"
  mkdir Design
fi

#Creating log file
#change directories
cat log.txt
chmod 755 log.txt
echo "this is the text in the log file" > log.txt
