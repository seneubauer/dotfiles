#!/bin/bash
umbriel subscribe submap | while read -r line; do
    SUBMAP=$(echo $line | jq '.data')
    if [ ! $SUBMAP = "null" ]; then
        noctalia msg notification-show $SUBMAP
    fi
done
