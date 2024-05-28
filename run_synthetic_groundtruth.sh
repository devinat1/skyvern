#!/bin/bash

# Ensure killing of all processes previously created
kill $(lsof -t -i:5001)
kill $(lsof -t -i:6379)

# Define the directory containing the HTML files
webpages_directory="../../data/synthetic/goclone-generated" # TODO Change this to ground truth when complete
agent_prompts_directory="../../prompt-creator/synthetic-prompts-text"

# Loop through all directories in the webpages directory
for dir in "$webpages_directory"/*/; do
    # Get the site name from the directory name
    site=$(basename "$dir")

    # Check if index.html exists in the directory
    if [ -f "$dir/index.html" ]; then
        # Save the current directory
        original_dir=$(pwd)

        # Get tasks dynamically from the respective _prompts.txt file
        tasks_file="$agent_prompts_directory/${site}_prompts.txt"
        if [ -f "$tasks_file" ]; then
            mapfile -t tasks < "$tasks_file"
            if [ ${#tasks[@]} -gt 0 ]; then
                # Start the Flask server in the background with the directory parameter
                export FLASK_APP=html_server.py
                export FLASK_ENV=development
                python3 html_server.py "$dir" &
                server_pid=$!

                # Function to check if the server is up
                check_server() {
                    curl --silent --head http://localhost:5001/ > /dev/null
                    return $?
                }

                # Wait for the server to be up
                echo "Starting Flask server for $site..."
                until check_server; do
                    sleep 1
                done
                echo "Server is up and running for $site"

                # Construct the localhost URL
                localhost_url="http://localhost:5001/"
                echo "URL: $localhost_url"

                # Run tasks
                for task in "${tasks[@]}"; do
                    python3 "$original_dir/skyvern.py" "$localhost_url" "$task" "true"
                done

                # Kill the Flask server
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
