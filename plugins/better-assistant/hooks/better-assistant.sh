#!/bin/bash

PLUGIN_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
INSTRUCTIONS_FILE="$PLUGIN_ROOT/instructions.md"

if [ ! -f "$INSTRUCTIONS_FILE" ]; then
  echo '{}'
  exit 0
fi

CONTENT=$(python3 -c 'import sys,json; print(json.dumps(sys.stdin.read()))' < "$INSTRUCTIONS_FILE")

cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": $CONTENT
  }
}
EOF

exit 0
