#!/bin/sh

while true; do
  date;
  sleep 3;
  mvn clean test -Dfile=/home/healt_check/health_check.json
  fuser -k -n tcp 5000
  python /home/healt_check/app.py
done
