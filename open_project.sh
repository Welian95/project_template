#!/bin/bash

# Ein neues Terminal öffnen und die restlichen Befehle dort ausführen
osascript <<EOF
tell application "Terminal"
    do script "cd '$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )' && \
    code . && \
    sleep 3 && \
    source venv/bin/activate && \
    echo 'Virtuelle Umgebung wurde aktiviert. Das Projekt ist nun in VSCode geöffnet.'"
end tell
EOF
