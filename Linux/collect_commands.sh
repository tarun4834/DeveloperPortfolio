#!/bin/bash
# Author: Tarun Kumar
# Roll Number: 2601730055
# University: K.R. Mangalam University

OUTPUT_FILE="$(dirname "$0")/commands_output.txt"

{
  echo "=== 1. Directory Listing (ls -la ~) ==="
  ls -la ~
  echo ""
  echo "=== 2. Top 10 Running Processes (ps aux | head -10) ==="
  ps aux | head -10
  echo ""
  echo "=== 3. Disk Space Usage (df -h) ==="
  df -h
  echo ""
  echo "=== 4. Memory Usage (free -h) ==="
  free -h
} > "$OUTPUT_FILE"

echo "Commands output successfully recorded to $OUTPUT_FILE"