import os

from flask import Flask, render_template, request, jsonify


app = Flask(__name__)


@app.route('/')
def hello_world():  # put application's code here
    return render_template('index.html')

@app.route('/api')
def API():
    return jsonify({'secret': 'The cake is a lie!'})

if __name__ == '__main__':
    app.run()
