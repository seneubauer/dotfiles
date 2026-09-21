#!/usr/bin/bash
cd ~/documents/notes/main
git pull origin main
noctalia msg notification-show '{"app_name":"Noctalia","summary":"Notes synced","body":"Note vault synced to remote repository","urgency":"low","timeout_ms":4000,"icon":"circle-check"}'
