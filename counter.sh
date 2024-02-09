#!/bin/bash

while true
do  
  current=$(curl -s -X GET http://localhost:9091/api/v1/metrics | jq -r '.data[].my_number.metrics[].value')
  
  if [[ "$current" != "" ]] ; then
    new=$(echo "$current + 1" | bc)
  else
    new="1"
  fi

  echo "Sending my_number $new"
  echo "my_number $new" | curl --data-binary @- http://localhost:9091/metrics/job/some_job

  sleep 1
done

