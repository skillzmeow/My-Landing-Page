#!/bin/zsh
# Rebuilds beats.json from the mp3 files in beats/.
# Usage: drop mp3s into beats/, then run:  ./scripts/update-beats.sh
# File names are parsed by the site: "<title> <bpm> <key> nika00 <collab>.mp3"
# e.g. "crow 139 g#min nika00 shvkeit.mp3"
# Names like "Stoic 127 a#min (@nika00).mp3" or "... [@nika00].mp3" are
# renamed to that format first (lowercase, plain "nika00").
set -e
cd "$(dirname "$0")/.."

python3 -I - <<'EOF'
import json, os, re

for f in sorted(os.listdir("beats")):
    if not f.lower().endswith(".mp3") or f.startswith("."):
        continue
    base = f[:-4]
    norm = re.sub(r"\s*[(\[]@?nika00[)\]]\s*", " nika00 ", base, flags=re.I)
    norm = re.sub(r"\s+", " ", norm).strip().lower() + ".mp3"
    if norm != f:
        os.rename(os.path.join("beats", f), os.path.join("beats", norm))
        print(f"renamed: {f}  ->  {norm}")

files = sorted(f for f in os.listdir("beats") if f.lower().endswith(".mp3") and not f.startswith("."))
with open("beats.json", "w") as fh:
    json.dump(files, fh, ensure_ascii=False, indent=2)
    fh.write("\n")
print(f"beats.json: {len(files)} tracks")
EOF
