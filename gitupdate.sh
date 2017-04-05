#!/bin/bash
#change user to sudo su -s /bin/bash homeassistant
#then run script

cd /home/homeassistant/.homeassistant
source /srv/homeassistant/bin/activate
hass --script check_config

git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

exit
