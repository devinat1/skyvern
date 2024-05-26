from flask import Flask, request, jsonify
import os

app = Flask(__name__)

@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.json
    task_id = data.get('task_id')
    print(f"Received webhook data: {data}")
    # Write to a file to indicate the callback was received
    with open(f'/tmp/{task_id}.txt', 'w') as f:
        f.write('callback received')
    return jsonify({'status': 'success'}), 200

if __name__ == '__main__':
    app.run(port=5000)
