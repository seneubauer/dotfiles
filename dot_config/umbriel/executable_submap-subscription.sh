#!/bin/bash
umbriel subscribe submap | while read -r line; do
    SUBMAP=$(echo $line | jq -r '.data')
    if [ ! $SUBMAP = "null" ]; then
        noctalia msg notification-show "$(cat ~/.config/umbriel/notification-payloads/$SUBMAP.json)"
    fi
done
