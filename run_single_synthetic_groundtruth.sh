#!/bin/bash

# Ensure killing of all processes previously created
kill $(lsof -t -i:5001)
kill $(lsof -t -i:6379)

# Define the directory containing the HTML files
webpages_directory="../../data/synthetic/goclone-generated" # TODO Change this to ground truth when complete
agent_prompts_directory="../../prompt-creator/synthetic-prompts-text"

# Create an array of sites that have task files
sites=()
for dir in "$webpages_directory"/*/; do
    site=$(basename "$dir")
    tasks_file="$agent_prompts_directory/${site}_prompts.txt"
    if [ -f "$tasks_file" ]; then
        sites+=("$site")
    fi
done

# If no sites found, exit
if [ ${#sites[@]} -eq 0 ]; then
    echo "No sites with tasks files found."
    exit 1
fi

# Present a dropdown list to the user
echo "Select a site to run:"
select site in "${sites[@]}"; do
    if [[ -n "$site" ]]; then
        break
    else
        echo "Invalid selection. Please try again."
    fi
done

# Check if the specified directory exists
dir="$webpages_directory/$site"
if [ -d "$dir" ]; then
    # Check if index.html exists in the directory
    if [ -f "$dir/index.html" ]; then
        # Save the current directory
        original_dir=$(pwd)

        # Get tasks dynamically from the respective _prompts.txt file
        tasks_file="$agent_prompts_directory/${site}_prompts.txt"
        if [ -f "$tasks_file" ]; then
            mapfile -t tasks < "$tasks_file"
            if [ ${#tasks[@]} -gt 0 ]; then
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

                # Run the selected task
                python3 "$original_dir/skyvern.py" "$localhost_url" "$selected_task" "true"

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
    else
        echo "No index.html found in $dir"
    fi
else
    echo "Directory $dir does not exist"
fi
