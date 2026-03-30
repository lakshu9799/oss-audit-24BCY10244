#!/bin/bash
# script4_log_analyzer.sh
# Analyze a log file for keyword occurrences and show last matching lines.

log_file="$1"
keyword="${2:-error}"

if [ -z "$log_file" ]; then
  echo "Usage: $0 <logfile> [keyword]"
  exit 1
fi

if [ ! -f "$log_file" ]; then
  echo "Log file does not exist: $log_file"
  exit 2
fi

count=0
while IFS= read -r line; do
  if echo "$line" | grep -i -q "$keyword"; then
    ((count++))
  fi
done < "$log_file"

echo "Keyword: $keyword"
echo "Total occurrences: $count"

echo "Last 5 matching lines:"
grep -i "$keyword" "$log_file" 2>/dev/null | tail -n 5 || echo "No matches found"
