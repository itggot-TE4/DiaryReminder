#!/bin/bash

TOKEN="$1"
CHANNEL="$2"
MSG_TYPE=`curl -X POST -H 'Content-type: application/x-www-form-urlencoded' --data 'token='"$TOKEN"'&channel='"$CHANNEL"'&limit=1&pretty=1' https://slack.com/api/conversations.history | jq '.messages[0].subtype?'`
if [[ "$MSG_TYPE" == *"bot_message"* ]]; then
    curl -X POST -H 'Content-type: application/x-www-form-urlencoded' --data 'token='"$TOKEN"'&channel='"$CHANNEL"'&username=Loggbokspåminnelser-slackboten&text=Hej, vänligen svara på ovanstående frågor :disappointed:' https://slack.com/api/chat.postMessage
fi
