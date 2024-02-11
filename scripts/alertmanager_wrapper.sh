#!/bin/sh

# set dummy hook if not configured in .env file
if [[ "${SLACK_API_URL}" == "" ]] ; then
  SLACK_API_URL="http://localhost/"
fi

# add slack secret to custom config
sed "s|\${SLACK_API_URL}|${SLACK_API_URL}|g" /etc/alertmanager/alertmanager.yml > /etc/alertmanager/alertmanager_active.yml 


cat /etc/alertmanager/alertmanager_active.yml

# start alert manager with custom config
/bin/alertmanager --config.file=/etc/alertmanager/alertmanager_active.yml --storage.path=/alertmanager
