#!/bin/bash

# Ensure script stops on first error
set -e

# Navigate to the directory where the script is located
scriptPath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$scriptPath"

# Count the number of directories in the results folder
count=$(find results -maxdepth 1 -type d | wc -l)

# Increment the count for the new test run directory. Adjust if the initial count includes the parent directory.
((count++))

# Run Robot Framework tests and specify output directory
robot --outputdir results/test$count tests/
