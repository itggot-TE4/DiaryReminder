#!/bin/bash

TOKEN="$1"
CHANNEL="$2"

curl -X POST -H 'Content-type: application/x-www-form-urlencoded' --data 'token='"$TOKEN"'&channel='"$CHANNEL"'&username=IFTTT-ersättare-slackboten&text=Vad har du gjort under dagen?
Vad har du lärt dig?
Vad förstod du inte / Vilka frågor har du inte fått svar på?
Vad vill du lära dig mer om? :memo:' https://slack.com/api/chat.postMessage
