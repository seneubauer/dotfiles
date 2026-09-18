#!/bin/bash

if [ $XDG_CURRENT_DESKTOP == "niri" ]
    wlr-which-key ~/.config/wlr-which-key/niri-config.yaml
elif [ $XDG_CURRENT_DESKTOP == "umbriel" ]
    wlr-which-key ~/.config/wlr-which-key/umbriel-config.yaml
fi
