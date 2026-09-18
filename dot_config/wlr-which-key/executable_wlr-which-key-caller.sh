#!/bin/bash

if [ $XDG_CURRENT_DESKTOP == "niri" ]; then
    wlr-which-key ~/.config/wlr-which-key/config-niri.yaml
elif [ $XDG_CURRENT_DESKTOP == "umbriel" ]; then
    wlr-which-key ~/.config/wlr-which-key/config-umbriel.yaml
fi
