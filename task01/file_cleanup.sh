#!/bin/bash

# Check if /tmp/old_files directory exists, if not, create it
if [ ! -d "/tmp/old_files" ]; then
    mkdir -p /tmp/old_files
fi

# Check if there are any .log files to move
if ls /tmp/*.log 1> /dev/null 2>&1; then
    # Move all .log files from /tmp to /tmp/old_files
    mv /tmp/*.log /tmp/old_files/
    # Log the action with a timestamp
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Moved .log files to /tmp/old_files" >> ~/file_cleanup.log
else
    # Log that no files were found
    echo "$(date '+%Y-%m-%d %H:%M:%S') - No .log files found in /tmp" >> ~/file_cleanup.log
fi
