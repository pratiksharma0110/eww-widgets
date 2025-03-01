#!/bin/sh

while true; do
  year=$(date +"%Y")
  month=$(date +"%B")
  days=$(cal | awk 'NR>2 {for(i=1;i<=NF;i++) printf "%s ", $i; print ""}' | tr '\n' ' ' | sed 's/ $//')
  today=$(date +"%d" | sed 's/^0//')
  day=$(date +"%A" | tr 'a-z' 'A-Z') 

  echo "{ \"year\": \"$year\", \"month\": \"$month\", \"dates\": \"$days\", \"current_date\": \"$today\", \"day\": \"$day\" }"

  sleep 60  
done
