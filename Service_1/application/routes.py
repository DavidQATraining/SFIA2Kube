from application import app
from flask import render_template, request
from flask_sqlalchemy import SQLAlchemy
import requests
import random
from os import environ
import os
#from flask_mysqldb import MySQL



# 3a617fb3dde7803d7e4513616c2973ee secret key

# export SECRET_KEY=3a617fb3dde7803d7e4513616c2973ee
# export MYSQL_USER=root
# export MYSQL_PASSWORD=hwg10IAR
# export MYSQL_HOST=34.105.182.1
# export MYSQL_PORT=3306
# export MYSQL_DB_NAME=sfia2db

# app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')
# app.config['MYSQL_USER'] = os.getenv('MYSQL_USER')
# app.config['MYSQL_PASSWORD'] = os.getenv('MYSQL_PASSWORD')
# app.config['MYSQL_HOST'] = os.getenv('MYSQL_HOST')
# app.config['MYSQL_PORT'] = os.getenv('MYSQL_PORT')
# app.config['MYSQL_DB'] = os.getenv('MYSQL_DB_NAME')

app.config['SECRET_KEY'] = environ.get('SECRET_KEY')
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://' + \
                                        environ.get('MYSQL_USER') + \
                                        ':' + \
                                        environ.get('MYSQL_PASSWORD') + \
                                        '@' + \
                                        environ.get('MYSQL_HOST') + \
                                        ':' + \
                                        environ.get('MYSQL_PORT') + \
                                        '/' + \
                                        environ.get('MYSQL_DB_NAME')

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)



# @app.route('/', methods=['GET'])
# def home():
#     response = requests.get('http://service_4:5003/piratename')
#     print(response)
#     piratename = response.text
#     return render_template('index.html', piratename = piratename, title = 'Home')

@app.route('/', methods=['GET'])
def home():
    response = requests.get('http://service_4:5003/piratename')
    print(response)
    piratename = response.text
    post_data = pirate_names(
        pirate_name=piratename
    )
    print(piratename)
    print_data = pirate_names.query.order_by(model.pirate_names.id.desc())
    db.session.add(post_data)
    db.session.commit()
    return render_template('index.html', piratename = piratename, print_data = print_data, title = 'Home')




class pirate_names(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    pirate_name = db.Column(db.String(30), nullable=False)

    def __repr__(self):
        return ''.join(
            [
                'id: ' + self.id + '\n' 
                'Name: ' + self.pirate_name 

            ]
        )


