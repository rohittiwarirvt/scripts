#!/bin/bash
# A simple script to do the Toggle of touchpad for lenovo thinkpad
declare -i ID
ID=`xinput list| grep -Eo 'Generic Mouse\s*id\=[0-9]{1,2}'| grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`xinput list-props $ID|grep 'Device Enabled'| awk '{print $4}'`
echo $STATE

if [ $STATE -eq 1 ]
then 
  xinput disable $ID
  echo "Touchpad Disabled"
else
  xinput enable $ID
  echo "Touchpad Enable"
fi
