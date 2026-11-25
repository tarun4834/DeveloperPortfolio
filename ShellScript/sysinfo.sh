#!/bin/bash
# Author: Tarun Kumar
# Roll Number: 2601730055
# University: K.R. Mangalam University

echo "=========================================================="
echo " SYSTEM HEALTH & HARDWARE REPORT"
echo " Author      : Tarun Kumar"
echo " Roll Number : 2601730055"
echo " Date        : $(date '+%Y-%m-%d %H:%M:%S')"
echo "=========================================================="
echo ""

echo "--- 1. CPU Information ---"
echo "Model : $(grep -m1 'model name' /proc/cpuinfo | cut -d':' -f2 | xargs)"
echo "Cores : $(nproc)"
echo "Load  : $(uptime | awk -F'load average:' '{print $2}')"
echo ""

echo "--- 2. Memory Usage ---"
free -h | awk 'NR==2{printf "Total: %s | Used: %s | Free: %s | Available: %s\n", $2, $3, $4, $7}'
echo ""

echo "--- 3. Top 3 Processes by CPU Usage ---"
ps aux --sort=-%cpu | awk 'NR==1 {printf "%-10s %-8s %-6s %-6s %-s\n", $1, $2, $3, $4, "COMMAND"} NR>1 && NR<=4 {printf "%-10s %-8s %-6s %-6s %-s\n", $1, $2, $3, $4, $11}'
echo ""

echo "=========================================================="
echo "Report generated successfully."