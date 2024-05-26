from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/index.html', methods=['GET'])
def serve_html():
    with open('index.html', 'r') as file:
        return file.read()

@app.route('/api/v1/tasks', methods=['POST'])
def handle_task():
    data = request.json
    print(data)  # Print or handle the received data as needed
    return jsonify({'status': 'success'}), 200

if __name__ == '__main__':
    app.run(port=8000)
