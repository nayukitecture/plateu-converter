#!/bin/bash
BIN="$(cd "$(dirname "$0")/../Resources" && pwd)/plateu-converter"
chmod +x "$BIN" 2>/dev/null
xattr -d com.apple.quarantine "$BIN" 2>/dev/null
osascript << EOF
tell application "Terminal"
    activate
    do script "\"$BIN\""
end tell
EOF
