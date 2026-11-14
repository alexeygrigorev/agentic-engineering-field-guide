#!/usr/bin/env bash
# Monthly scheduled collection (systemd timer agentic-jobs-monthly.timer, 25th of each month).
# Runs the full link-then-scrape snapshot in a dedicated clone and commits the results to main.
set -euo pipefail
REPO_URL="${REPO_URL:-git@github.com:alexeygrigorev/agentic-engineering-field-guide.git}"
CHECKOUT="${MONTHLY_CHECKOUT:-$HOME/git/agentic-engineering-field-guide-monthly}"
SNAP_DATE="${SNAP_DATE:-$(date +%F)}"

if [ ! -d "$CHECKOUT/.git" ]; then
  git clone "$REPO_URL" "$CHECKOUT"
fi
cd "$CHECKOUT"
git fetch origin main
git checkout -B main origin/main

./data/live/run_monthly.sh --date "$SNAP_DATE"

git add -f "data/live/data/builtin" "data/live/data/scrapes/$SNAP_DATE" "data/live/data/all_jobs_dedup.csv" "data/live/data_raw/$SNAP_DATE"
if git diff --cached --quiet; then
  echo "Nothing to commit for $SNAP_DATE"
  exit 0
fi
git commit -m "Monthly live snapshot $SNAP_DATE (London, Berlin, New York; all pages, deduped)"
for i in 1 2 3; do
  git pull --rebase origin main && git push origin HEAD:main && exit 0
  sleep 10
done
exit 1
