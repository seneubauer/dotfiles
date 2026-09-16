#!/bin/bash
umbriel subscribe submap | while read -r line; do
    SUBMAP=$(echo $line | jq -r '.data')
    if [ ! $SUBMAP = "null" ]; then
        PAYLOAD=$(jq --arg key "$SUBMAP" '.[$key]' ~/.config/umbriel/notification-payloads.json)
        echo "SUBMAP: $SUBMAP"
        echo "PAYLOAD: $PAYLOAD"
        #noctalia msg notification-show $PAYLOAD
    fi
done
