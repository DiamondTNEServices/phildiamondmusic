#!/bin/bash
# Publishes the current index.html to phildiamondmusic.com.
# Netlify watches the GitHub repo and redeploys automatically on every push to main.
set -e
cd "$(dirname "$0")"

if [ ! -f index.html ]; then
  echo "No index.html found in $(pwd). Drop the new file here first."
  exit 1
fi

git add -A
if git diff --cached --quiet; then
  echo "Nothing changed since the last deploy. The live site is already up to date."
  exit 0
fi

git commit -q -m "Update site $(date '+%Y-%m-%d %H:%M')"
git push -q origin main
echo "Done. Netlify is publishing the new version; it will be live in about a minute:"
echo "  https://phildiamondmusic.com"
