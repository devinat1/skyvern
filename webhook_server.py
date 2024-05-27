from flask import Flask, request, jsonify
import os
import redis

app = Flask(__name__)

# Initialize Redis connection
redis_host = os.getenv('REDIS_HOST', 'localhost')
redis_port = int(os.getenv('REDIS_PORT', 6379))
redis_password = os.getenv('REDIS_PASSWORD', None)

r = redis.StrictRedis(host=redis_host, port=redis_port, password=redis_password, decode_responses=True)

@app.route('/webhook', methods=['POST'])
def webhook():
    data = request.json
    count = data.get('callback_count')
    print('Webhook callback received')
    
    # Update the count in Redis
    r.incr(f'callback_count:{1}')
    
    return jsonify({'status': 'success'}), 200

if __name__ == '__main__':
    app.run(port=5000)
