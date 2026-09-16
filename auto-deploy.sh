#!/bin/bash
# Run by macOS (launchd) whenever index.html in this folder changes.
# Waits for the copy to finish, sanity-checks the file, then runs deploy.sh.
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin
cd "$(dirname "$0")"

notify() { osascript -e "display notification \"$2\" with title \"phildiamondmusic.com\" subtitle \"$1\"" >/dev/null 2>&1; }

# Wait until the file stops changing (Finder may still be copying).
prev=""
for _ in $(seq 1 30); do
  cur=$(stat -f '%z %m' index.html 2>/dev/null)
  [ -n "$cur" ] && [ "$cur" = "$prev" ] && break
  prev=$cur
  sleep 2
done

# Nothing new to publish (e.g. triggered by a no-op): exit quietly.
git add -A index.html 2>/dev/null
git diff --cached --quiet -- index.html && exit 0

size=$(stat -f '%z' index.html 2>/dev/null || echo 0)
if [ "$size" -lt 10000 ] || ! head -c 2000 index.html | grep -qi '<html'; then
  git restore --staged index.html 2>/dev/null
  notify "⚠️ Δεν ανέβηκε" "Το index.html δεν μοιάζει με τη σελίδα. Έλεγξε ότι έβαλες το σωστό αρχείο."
  exit 1
fi

if ./deploy.sh; then
  notify "✅ Ανεβαίνει" "Η νέα σελίδα θα είναι online σε 1 λεπτό."
else
  notify "⚠️ Κάτι πήγε στραβά" "Η σελίδα δεν ανέβηκε. Άνοιξε το Claude και πες «deploy»."
  exit 1
fi
