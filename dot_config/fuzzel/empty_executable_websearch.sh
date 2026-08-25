exec fuzzel --dmenu --config ~/.config/fuzzel/websearch.ini | sed 's/^/"/;s/$/"/' | xargs zen-browser --search
