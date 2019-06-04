#!/usr/bin/env sh

import os
from flask import Flask
from flask import render_template
# from flask_sqlalchemy import SQLAlchemy


BASE_DIR = os.path.basename(os.path.dirname(__file__))

application = Flask(__name__)

application.config['SECRET KEY'] = ''
application.config['MEDIA'] = os.path.join(BASE_DIR, 'media')
application.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://scott:tiger@localhost/test'

# DATABASE
# db = SQLAlchemy(app)

# CORS

@application.route('/', methods=['GET'])
def hero():
    return render_template('home/hero.htm')

if __name__ == "__main__":
    application.run(port='8000', debug=True)
