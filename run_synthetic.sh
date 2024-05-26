#!/bin/bash

# Define the directory containing the HTML files
webpages_directory="../../data/synthetic/goclone-generated"

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
                    python "$original_dir/skyvern.py" "$localhost_url" "$task" "true"

                    sleep 1000 # FIXME Need a way to programatically check for the server running
                    # Run with dark patterns
                    # python skyvern.py "$localhost_url" "$task" "false"
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
