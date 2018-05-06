#!/bin/sh

cd "${0%/*}"

KMTRONIC_IP=192.168.88.98
STATE_FILE=lampa_ogrod_wjazd

/usr/bin/curl --silent $KMTRONIC_IP/FF0101 | sed -e '/Status: /!d' -e 's/Status: \([0-1]\) \([0-1]\).*/\1/' > $STATE_FILE
