#!/bin/bash
# script1_system_identity.sh
# Collect basic system and Python information for academic inspection.

# Logged-in user
user_name=$(whoami 2>/dev/null || echo "unknown")

# Date and time
current_time=$(date '+%Y-%m-%d %H:%M:%S' 2>/dev/null || echo "unknown")

# Uptime (fallback)
uptime_info=$(uptime -p 2>/dev/null || echo "Uptime info not available")

# Python version
default_python=$(python --version 2>&1 || echo "Python not found")

# pip version
pip_version=$(pip --version 2>&1 || echo "pip not found")

echo "System Identity & Python Info"
echo "=============================="
echo "User: $user_name"
echo "Date/Time: $current_time"
echo "Uptime: $uptime_info"
echo "Python Version: $default_python"
echo "pip Version: $pip_version"
