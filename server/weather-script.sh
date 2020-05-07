#!/bin/sh

httpd -h /www

while true;
do
  python2 /app/weather-script.py
  rsvg-convert --background-color=white -o /app/weather-script-output.png /app/weather-script-output.svg
  pngcrush -c 0 -ow /app/weather-script-output.png
  cp -f /app/weather-script-output.png /www/weather-script-output.png
  sleep 5
done
