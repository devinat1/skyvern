import os
import openai
import requests
import json
from dotenv import load_dotenv
import sqlite3
from sys import argv

# Set your OpenAI API key
load_dotenv()
openai_api_key = os.getenv('OPENAI_API_KEY')

# Directory containing the prompt files
prompts_dir = '../../prompt-creator/prompts-text'

# TODO Make the runner follow OOP principles like with multion.py

# Function to read prompt file and extract site and tasks
def read_prompt_file(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
        site = lines[0].strip()
        tasks = [line.strip() for line in lines[1:] if line.strip()]
    return site, tasks

# Function to generate the API request payload
def generate_payload(site, navigation_goal, data_extraction_goal, navigation_payload):
    payload = {
        "title": "null",
        "url": f"https://www.{site}",
        "webhook_callback_url": "",
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
        cleaned_response = openai.chat.completions.create(
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
            cleaned_json_response = json.loads(cleaned_response.choices[0].message.content)
        except json.JSONDecodeError:
            print("Error: Invalid JSON response")
            return {}
        
        return cleaned_json_response
    
    return json_response

# Function to send the request and get response
def send_request(payload):
    # TODO Don't hardcode the API key
    headers = {
        'Content-Type': 'application/json',
        'x-api-key': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjQ4NjEwMzA4ODcsInN1YiI6Im9fMjU5MzYzMTQxMjQ3Mjg3ODY0In0.n_FOWV3UCP1IpJA6A1L38Gk0k7KoaZHinjZuUIRD3Yo'
    }
    response = requests.post('http://127.0.0.1:8000/api/v1/tasks', json=payload, headers=headers)
    return response.json()

# Main function to process all prompt files
def main():
    site, task = argv[1], argv[2]
    task_json = get_task_details(task)
    navigation_goal = task_json.get('navigation_goal')
    data_extraction_goal = task_json.get('data_extraction_goal')
    navigation_payload = task_json.get('navigation_payload')
    payload = generate_payload(site, navigation_goal, data_extraction_goal, navigation_payload)
    print(payload)
    send_request(payload)

if __name__ == '__main__':
    main()
