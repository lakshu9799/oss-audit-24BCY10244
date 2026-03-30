#!/bin/bash
# script5_manifest_generator.sh
# Interactively ask user questions and generate a manifest report.

echo "Please answer the following questions (academic project manifest):"
read -p "1. What is the project name? " project_name
read -p "2. What is the main purpose of this tool? " tool_purpose
read -p "3. Who are the contributors (your name)? " contributors

output_file="audit_manifest.txt"

cat > "$output_file" <<EOF
Project Manifest
================
Project: $project_name
Purpose: $tool_purpose
Contributors: $contributors

Summary:
This manifest describes the setup and goals of the project. $project_name is intended for learning and open source analysis with a focus on Python environment insights.
EOF

echo "Generated manifest file: $output_file"
echo "------"
cat "$output_file"
