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

# Create an array of sites based on the prompts files
sites=()
for prompts_file in "$prompts_directory"/*_prompts.txt; do
    site=$(basename "$prompts_file" "_prompts.txt")
    sites+=("$site")
done

# If no sites found, exit
if [ ${#sites[@]} -eq 0 ]; then
    echo "No sites with prompts files found."
    exit 1
fi

# Present a dropdown list to the user for site selection
echo "Select a site to run:"
select site in "${sites[@]}"; do
    if [[ -n "$site" ]]; then
        break
    else
        echo "Invalid selection. Please try again."
    fi
done

# Get the prompts file for the selected site
prompts_file="$prompts_directory/${site}_prompts.txt"

echo "Processing $prompts_file"

if [ -f "$prompts_file" ]; then
    mapfile -t tasks < "$prompts_file"
    if [ ${#tasks[@]} -gt 0 ]; then
        # The first line of the file is the URL
        url="${tasks[0]}"
        echo "URL: $url"
        
        # Remove the first element (URL) from the tasks array
        tasks=("${tasks[@]:1}")

        # If no tasks found, exit
        if [ ${#tasks[@]} -eq 0 ]; then
            echo "No tasks found in $prompts_file"
            kill $webhook_pid
            exit 1
        fi

        # Present a dropdown list to the user for task selection
        echo "Select a task to run:"
        select task in "${tasks[@]}"; do
            if [[ -n "$task" ]]; then
                selected_task="$task"
                break
            else
                echo "Invalid selection. Please try again."
            fi
        done

        # Execute the selected task
        python3 "skyvern.py" "$url" "$selected_task" "true"

    else
        echo "No tasks found in $prompts_file"
    fi
else
    echo "No prompts file found for $site"
fi

# Kill the webhook server
kill $webhook_pid
