# Python Environment Inspector — Open Source Analysis & System Audit Toolkit

## Description
A simple academic toolkit for inspecting Python environment details and performing a basic host audit. This repository contains bash scripts designed to run on Linux and Git Bash (Windows-compatible where possible). Ideal for learning scripting, reporting, and system status checks.

## Student Details
- Name: LAKSHYA PANDYA 
- Registration no:- 24BCY10244
- Course: OPEN SOURCE SOFTWARE 


## Script Summary

1. `script1_system_identity.sh`
   - Captures logged-in user, date/time, uptime, Python version, pip version.
   - Uses variables and command substitution.

2. `script2_python_inspector.sh`
   - Verifies Python installation and lists installed packages.
   - Includes `if-else` logic and `case` checks for numpy/flask/django.

3. `script3_env_auditor.sh`
   - Loops through home and current directory.
   - Shows permissions and ownership with `ls -ld`.
   - Detects virtual environments (`venv` / `.venv`).

4. `script4_log_analyzer.sh`
   - Accepts log file and optional keyword (default: `error`).
   - Counts occurrences and shows last 5 matching lines.
   - Implements a `while` loop with grep and counter.

5. `script5_manifest_generator.sh`
   - Prompts user with 3 questions and writes a manifest.
   - Saves results to `audit_manifest.txt` and prints contents.

## Usage Instructions

1. Make all scripts executable:

```bash
chmod +x script1_system_identity.sh \
          script2_python_inspector.sh \
          script3_env_auditor.sh \
          script4_log_analyzer.sh \
          script5_manifest_generator.sh
```

2. Run scripts:

- System identity and Python info:
  `./script1_system_identity.sh`

- Python package inspection:
  `./script2_python_inspector.sh`

- Environment audit:
  `./script3_env_auditor.sh`

- Log analysis (example):
  `./script4_log_analyzer.sh /var/log/syslog error`

- Manifest creation:
  `./script5_manifest_generator.sh`

## Notes
- Designed to be readable for academic grading.
- Error handling uses fallback values and checks for missing commands.
- Keep the project folder in a safe location for audit snapshots.
