#!/bin/sh

cd "${0%/*}"

KMTRONIC_IP=192.168.88.98
STATE_FILE=lampa_ogrod_wjazd

# Brak pliku? Wyłącz światło i zobacz jeszcze raz
if [ ! -r $STATE_FILE ] 
then
#  echo "No state file, switch off"
  ./lampa_ogrod_wjazd_off.sh
fi

if [ -r $STATE_FILE ];
then
#  echo "State file found"
  TMP=$(cat $STATE_FILE)
#  echo TMP:$TMP
  if [ $TMP -eq "0" ]; 
  then
#    echo "Found 0, ret 1"
    return 1;
  else 
#    echo "Found 1, ret 0"
    return 0;
  fi
else
#  echo "Still no state file, bye"
  return 1;
fi

