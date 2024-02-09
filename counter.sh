#!/bin/bash

while true
do  
  current=$(curl -s -X GET http://localhost:9091/api/v1/metrics | jq -r '.data[0].jenkins_build_success.metrics[0].value')
  new=$(echo "$current + 1" | bc)

  echo "Sending count $new"
  echo "jenkins_build_success $new" | curl --data-binary @- http://localhost:9091/metrics/job/check_drift

  sleep 5
done

