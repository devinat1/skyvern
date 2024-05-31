import os
import openai
import requests
import json
import time
from dotenv import load_dotenv
from sys import argv
import redis

# Set your OpenAI API key
load_dotenv()
openai_api_key = os.getenv('OPENAI_API_KEY')

# Initialize Redis connection
redis_host = os.getenv('REDIS_HOST', 'localhost')
redis_port = int(os.getenv('REDIS_PORT', 6379))
redis_password = os.getenv('REDIS_PASSWORD', None)

r = redis.StrictRedis(host=redis_host, port=redis_port, password=redis_password, decode_responses=True)

# Function to generate the API request payload
def generate_payload(site, navigation_goal, data_extraction_goal, navigation_payload):
    payload = {
        "title": "null",
        "url": f"{site}",
        "webhook_callback_url": "http://127.0.0.1:5000/webhook",
        "navigation_goal": navigation_goal,
        "data_extraction_goal": data_extraction_goal,
        "navigation_payload": navigation_payload,
        "error_code_mapping": {},
        "proxy_location": "NONE",
        "extracted_information_schema": "null"
    }
    return payload

# Function to get task details from OpenAI
def get_task_details(task):
    client = openai.OpenAI(api_key=openai_api_key)
    messages = [
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": f"""Given the task: {task}, provide a suitable navigation goal, data extraction goal, and payload in JSON format. 
        Give the results as a JSON result. Only give the JSON in your output.
        Specifically give the result as a format that can be ingested by python's json.loads() function.
        Only return one JSON object.
        That is, have it be in this form:
        {{
            "navigation_goal": "Your navigation goal here",
            "data_extraction_goal": "Your data extraction goal here",
            "navigation_payload": "Your navigation payload here"
        }}
         """}
    ]

    response = client.chat.completions.create(
        model="gpt-4o",
        messages=messages,
        max_tokens=200,
        temperature=0
    )

    try:
        json_response = json.loads(response.choices[0].message.content)
    except json.JSONDecodeError:
        print("Error: Invalid JSON response")
        # Attempt to clean the response using GPT-3.5-turbo
        cleaned_response = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[
                {
                    "role": "system",
                    "content": "You are a helpful assistant to fix an invalid JSON response. You need to fix the invalid JSON response to be valid JSON. You must respond in JSON only with no other fluff or bad things will happen. Do not return the JSON inside a code block.",
                },
                {"role": "user", "content": f"The invalid JSON response is: {response.choices[0].message.content}"},
            ],
        )
        try:
            json_response = json.loads(cleaned_response.choices[0].message.content)
        except json.JSONDecodeError:
            print("Error: Invalid JSON response after cleaning")
            return {}
    
    return json_response

# Function to send the request and get response
def send_request(payload):
    headers = {
        'Content-Type': 'application/json',
        'x-api-key': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjQ4NjEwMzA4ODcsInN1YiI6Im9fMjU5MzYzMTQxMjQ3Mjg3ODY0In0.n_FOWV3UCP1IpJA6A1L38Gk0k7KoaZHinjZuUIRD3Yo'
    }
    response = requests.post('http://127.0.0.1:8000/api/v1/tasks', json=payload, headers=headers)
    return response.json()

# Function to wait for the callback and check the count
def wait_for_callback_and_check_count(timeout=300, check_interval=5):
    start_time = time.time()
    while time.time() - start_time < timeout:
        count = int(r.get('callback_count') or 0)
        if count > initial_count:
            print(f"Callback count updated: {count}")
            return count
        time.sleep(check_interval)
    print(f"Timeout waiting for callback count to update")
    return initial_count

# Function to check if payload file already exists
def check_payload_file_exists(site, task):
    file_path = f"payloads/{site}_{task}.json"
    return os.path.exists(file_path)

# Function to save payload to a file
def save_payload_to_file(site, task, payload):
    file_path = f"payloads/real/{site}_{task}.json"
    if "localhost" in site:
        file_path = f"payloads/synthetic/{site}_{task}.json"

    print(f"SAVING TO FILE: {file_path}")
    with open(file_path, 'w') as file:
        json.dump(payload, file, indent=4)

# Function to sanitize names
def sanitize_name(name):
    return name.replace("http://localhost:5000", "").replace("https://", "").replace(":", "").replace("/", "_").replace(",", "_").replace(" ", "_").replace("?", "").replace("&", "").replace("=", "")

# Main function to process all prompt files
def main():
    site = argv[1] if "localhost" in argv[1] else f"https://{argv[1]}"
    task = argv[2].rstrip('.').rstrip()
    
    sanitized_site = sanitize_name(site)
    sanitized_task = sanitize_name(task)

    task_json = get_task_details(task)
    if not task_json:
        print("Error: No valid task details obtained.")
        return
    
    navigation_goal = task_json.get('navigation_goal')
    data_extraction_goal = task_json.get('data_extraction_goal')
    navigation_payload = task_json.get('navigation_payload')
    payload = generate_payload(site, navigation_goal, data_extraction_goal, navigation_payload)
    
    save_payload_to_file(sanitized_site, sanitized_task, payload)
    
    # Get the initial count before sending the request
    global initial_count
    initial_count = int(r.get('callback_count') or 0)
    print(f"Initial callback count: {initial_count}")
    
    send_request(payload)
    final_count = wait_for_callback_and_check_count()  # Wait for the callback and get the final count
    
    print(f"Final callback count: {final_count}")

if __name__ == '__main__':
    main()
