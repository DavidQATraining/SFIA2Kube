from application import app
import requests


@app.route('/piratename', methods=['GET'])
def sentence():
    first_name = requests.get('http://service_2:5001/randomphrase')
    last_name = requests.get('http://service_3:5002/randomphrase')
    pirateName = first_name.text + " " + last_name.text
    return pirateName