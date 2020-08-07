from application import app
import requests


@app.route('/piratename', methods=['GET'])
def sentence():
    first_name = requests.get('http://service_2:5001/piratename')
    last_name = requests.get('http://service_3:5002/piratename')
    
    pirateName = first_name.text + " " + last_name.text
    
    # change for presentation
    #pirateName = "Presenting "+ first_name.text + " " + last_name.text
    return pirateName