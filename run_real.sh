#!/bin/bash

# Set up webhook
python3 webhook_server.py

# Define the directory containing the text files
agent_prompts_directory="../../prompt-creator/prompts-text"

# Loop through all .txt files in the directory
for filename in "$agent_prompts_directory"/*.txt; do
    # Read the first line for the site
    read -r site < "$filename"

    # Read the remaining lines as tasks
    while IFS= read -r line; do
        # Skip the first line containing the site
        if [ "$line" == "$site" ]; then
            continue
        fi

        # Call the ground truth (with adblocker)
        python3 skyvern.py "$site" "$line" "true"
        sleep 200 # TODO Find a better way so that you avoid waiting a guaranteed 200 seconds each time

        # Run with dark patterns
        # python skyvern.py "$site" "$line" "false"

    done < "$filename"
done
