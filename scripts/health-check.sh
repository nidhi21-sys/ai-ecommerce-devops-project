#!/bin/bash
URL="http://localhost:8080"
if curl -s --head "$URL" | grep "200 OK" > /dev/null
then
   echo "Application is UP"
else
   echo "Application is DOWN"
   exit 1
fi
