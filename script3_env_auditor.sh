#!/bin/bash
# script3_env_auditor.sh
# Audit the environment with directory listings and virtual environment checks.

dirs=("$HOME" ".")

for d in "${dirs[@]}"; do
  echo "\nInspecting: $d"
  if [ -d "$d" ]; then
    ls -ld "$d" 2>/dev/null || echo "Cannot access directory $d"

    echo "Ownership and permissions in $d:"
    ls -ld "$d" 2>/dev/null || echo "Permission info not available"

    if [ -d "$d/venv" ] || [ -d "$d/.venv" ]; then
      echo "Virtual environment found in $d"
    else
      echo "No virtual environment found in $d"
    fi
  else
    echo "$d does not exist or is not a directory"
  fi
done
