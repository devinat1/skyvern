#!/bin/bash

# Ensure killing of all processes of port 8001, 5000, and 6379 prior to rerunning
kill $(lsof -t -i:8001)
kill $(lsof -t -i:5000)
kill $(lsof -t -i:6379)

# Set up webhook
python3 webhook_server.py &  # Run the webhook server in the background
webhook_pid=$!

# Define the directory containing the prompts files
prompts_directory="../../prompt-creator/real-prompts-text"

# Loop through all prompt files in the prompts directory
for prompts_file in "$prompts_directory"/*_prompts.txt; do
    # Get the site name from the file name
    site=$(basename "$prompts_file" "_prompts.txt")

    echo "Processing $prompts_file"
    
    if [ -f "$prompts_file" ]; then
        mapfile -t tasks < "$prompts_file"
        if [ ${#tasks[@]} -gt 0 ]; then
            # The first line of the file is the URL
            url="${tasks[0]}"
            echo "URL: $url"
            
            # Remove the first element (URL) from the tasks array
            tasks=("${tasks[@]:1}")

            for task in "${tasks[@]}"; do
                python3 "skyvern.py" "$url" "$task" "true"
            done
        else
            echo "No tasks found in $prompts_file"
        fi
    else
        echo "No prompts file found for $site"
    fi
done

# Kill the webhook server
kill $webhook_pid
