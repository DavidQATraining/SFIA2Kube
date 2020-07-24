from application import app
from flask import render_template, request
import requests
import random

@app.route('/', methods=['GET'])
def home():
    response = requests.get('http://service_4:5003/piratename')
    print(response)
    piratename = response.text
    return render_template('index.html', piratename = piratename, title = 'Home')