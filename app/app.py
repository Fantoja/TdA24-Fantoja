import os
from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

@app.route('/api')
def API():
    return jsonify({'secret': 'The cake is a lie!'})

if __name__ == '__main__':
    # Run the app on 0.0.0.0 to make it accessible externally
    app.run(host='0.0.0.0', port=5000)
