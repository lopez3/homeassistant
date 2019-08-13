#!/bin/sh

cd "${0%/*}"

#/usr/bin/avconv -v quiet -i rtsp://user:pass@192.168.88.100:554/Streaming/Channels/2 -an -frames:v 2 -c:v mjpeg  -q:v 2 -f image2pipe - > salon_tmp.jpg 
#/usr/bin/avconv -v quiet -i rtsp://user:pass@192.168.88.101:554/Streaming/Channels/2 -an -frames:v 2 -c:v mjpeg  -q:v 2 -f image2pipe - > drzwi_tmp.jpg 

#/usr/bin/avconv -v quiet -i rtsp://user:pass@192.168.88.100:554/Streaming/Channels/1 -an -frames:v 1 -c:v mjpeg  -f image2pipe - > salon_HD.jpg 
#/usr/bin/avconv -v quiet -i rtsp://user:pass@192.168.88.101:554/Streaming/Channels/1 -an -frames:v 1 -c:v mjpeg  -f image2pipe - > drzwi_HD.jpg 

#wget -q -O salon_tmp.jpg --user=user --password=pass http://192.168.88.100/Streaming/Channels/1/picture 
#wget -q -O drzwi_tmp.jpg --user=user --password=pass http://192.168.88.101/Streaming/Channels/1/picture 

WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O salon_tmp.jpg http://192.168.88.100/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O drzwi_tmp.jpg http://192.168.88.101/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O brama_tmp.jpg http://192.168.88.103/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O narzedziowy_tmp.jpg http://192.168.88.104/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O podjazd_tmp.jpg http://192.168.88.107/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O furtka_tmp.jpg http://192.168.88.108/Streaming/Channels/1/picture &

WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O sciezka_tmp.jpg http://192.168.88.109/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O wiata_tmp.jpg http://192.168.88.110/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O hamak_tmp.jpg http://192.168.88.111/Streaming/Channels/1/picture &
WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrc wget -q -O aleja_tmp.jpg http://192.168.88.112/Streaming/Channels/1/picture &

#WGETRC=/home/homeassistant/.homeassistant/scripts/.wgetrcptaki wget -q -O ptaki_tmp.jpg http://192.168.88.105/Streaming/Channels/1/picture &

wait

mv -f salon_tmp.jpg /home/homeassistant/.homeassistant/www/local/salon.jpg
mv -f drzwi_tmp.jpg /home/homeassistant/.homeassistant/www/local/drzwi.jpg
mv -f brama_tmp.jpg /home/homeassistant/.homeassistant/www/local/brama.jpg
mv -f narzedziowy_tmp.jpg /home/homeassistant/.homeassistant/www/local/narzedziowy.jpg
mv -f furtka_tmp.jpg /home/homeassistant/.homeassistant/www/local/furtka.jpg
mv -f podjazd_tmp.jpg /home/homeassistant/.homeassistant/www/local/podjazd.jpg
mv -f sciezka_tmp.jpg /home/homeassistant/.homeassistant/www/local/sciezka.jpg
mv -f wiata_tmp.jpg /home/homeassistant/.homeassistant/www/local/wiata.jpg
mv -f hamak_tmp.jpg /home/homeassistant/.homeassistant/www/local/hamak.jpg
mv -f aleja_tmp.jpg /home/homeassistant/.homeassistant/www/local/aleja.jpg

#mv -f ptaki_tmp.jpg /home/homeassistant/.homeassistant/www/local/ptaki.jpg

#wget --user=user --password=pass http://192.168.88.102:8080/stream/snapshot.jpg