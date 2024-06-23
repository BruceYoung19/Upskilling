#! /usr/bin/env bash

: '
Author: Bruce Young
I wanted create a cool like display to display the options I have.
'

### Variables - 
clear
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

echo "##################################################"
echo "#######   GARDEN HELP - Your Support  ############"
echo "##################################################"
echo "                         "
echo "These are the options you can use:"
printf "${ORANGE}clean-field${NC}        Collecting the garage \n"
printf "${ORANGE}check-garden${NC}       Check the Nix verion \n"
printf "${ORANGE}change-garden${NC}      Change the dev environment\n"
printf "${ORANGE}check-view${NC}         Document for Eposides/Chapters \n"
printf "${ORANGE}kill-crops${NC}         Removing directory or files\n"
printf "${ORANGE}plant-roses${NC}        Create directory or files\n"
