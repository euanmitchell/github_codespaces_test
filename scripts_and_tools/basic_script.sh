#!/usr/bin/env bash

####################
# COMMENT BLOCK

# All scripts start with a "shebang" line like the above, which tells the script what environment it should be run in (e.g., bash, zsh, Python, etc.).
# Many have one or more debug mode flags next.
# Then set variables to be used within the script.
# Finally the statement(s) that are to be executed by the script.

####################

# Debug modes:
# Set strict mode - causes shell to exit when a command fails (more robust)
set -e

# Enable printing of shell input lines as they are read (good for debugging)
set -v

# Enable printing of command traces before executing commands (also good for debugging)
set -x

# Many scripts have variables
variable="one"

# Statements are the heart of any script though
echo "This is a script with a variable: $variable"

# Scripts also need to be made executable by running: chmod +x script_name
# This script can now be run: ./script_name