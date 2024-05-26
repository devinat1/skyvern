#!/bin/bash

# Ensure killing of all processes of port 8001, 5000, and 6379 prior to rerunning
kill -9 $(lsof -t -i:8001)
kill -9 $(lsof -t -i:5000)
kill -9 $(lsof -t -i:6379)

# Define the directory containing the HTML files
webpages_directory="../../data/synthetic/goclone-generated"

# Set up webhook
python3 webhook_server.py &  # Run the webhook server in the background
webhook_pid=$!

# Loop through all directories in the webpages directory
for dir in "$webpages_directory"/*/; do
    # Get the site name from the directory name
    site=$(basename "$dir")

    # Check if index.html exists in the directory
    if [ -f "$dir/index.html" ]; then
        # Save the current directory
        original_dir=$(pwd)

        # Get tasks dynamically from the respective _prompts.txt file
        tasks_file="$original_dir/../../prompt-creator/synthetic-prompts-text/${site}_prompts.txt"
        echo $tasks_file
        if [ -f "$tasks_file" ]; then
            mapfile -t tasks < "$tasks_file"
            if [ ${#tasks[@]} -gt 0 ]; then
                # Change to the target directory
                cd "$dir"

                # Start a simple HTTP server in the background
                python3 -m http.server 8001 &
                server_pid=$!

                # Function to check if the server is up
                check_server() {
                    curl --silent --head http://localhost:8001/index.html > /dev/null
                    return $?
                }

                # Wait for the server to be up
                echo "Starting server for $site..."
                until check_server; do
                    sleep 1
                done
                echo "Server is up and running for $site"

                # Construct the localhost URL
                localhost_url="localhost:8001/index.html"
                echo "URL: $localhost_url"

                for task in "${tasks[@]}"; do
                    # Call the ground truth (with adblocker)
                    python3 "$original_dir/skyvern.py" "$localhost_url" "$task" "true"

                    # No need to wait here, as skyvern.py will handle waiting for the callback

                    # Run with dark patterns
                    # python3 skyvern.py "$localhost_url" "$task" "false"
                done

                # Kill the HTTP server
                kill $server_pid

                # Change back to the original directory
                cd "$original_dir"
            else
                echo "No tasks found in $tasks_file"
            fi
        else
            echo "No tasks file found for $site"
        fi
    fi
done

# Kill the webhook server
kill $webhook_pid
