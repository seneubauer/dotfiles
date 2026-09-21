#!/usr/bin/bash
cd ~/documents/notes/main
git add .
git commit -m "auto-publish"
git push origin main
noctalia msg notification-show '{"app_name":"Noctalia","summary":"Notes published","body":"All notes published","urgency":"low","timeout_ms":4000,"icon":"circle-check"}'
