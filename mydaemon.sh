#!/bin/sh

while true; do
  date;
  sleep 30;
  mvn clean test -Dfile=health_check.json;
  fuser -k -n tcp 5000;
  python app.py &;
done
