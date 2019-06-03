import os
from flask import Flask
from flask import render_template
from flask_sqlalchemy import SQLAlchemy


BASE_DIR = os.path.basename(os.path.dirname(__file__))

app = Flask(__name__)

app.config['SECRET KEY'] = ''
app.config['MEDIA'] = os.path.join(BASE_DIR, 'media')

# DATABASE
db = SQLAlchemy(app)

# CORS

@app.route('/', methods=['GET'])
def hero():
    print(app.config['MEDIA'])
    return render_template('home/hero.htm')

print(BASE_DIR)

if __name__ == "__main__":
    app.run(port='8000', debug=True)