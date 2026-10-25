#!/bin/zsh
# Rebuilds beats.json from the mp3 files in beats/.
# Usage: drop mp3s into beats/, then run:  ./scripts/update-beats.sh
# File names are parsed by the site: "<title> <bpm> <key> nika00 <collab>.mp3"
# e.g. "crow 139 g#min nika00 shvkeit.mp3"
set -e
cd "$(dirname "$0")/.."

python3 -I - <<'EOF'
import json, os
files = sorted(f for f in os.listdir("beats") if f.lower().endswith(".mp3") and not f.startswith("."))
with open("beats.json", "w") as fh:
    json.dump(files, fh, ensure_ascii=False, indent=2)
    fh.write("\n")
print(f"beats.json: {len(files)} tracks")
EOF
