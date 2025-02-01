from flask import Flask

app = Flask(__name__)

@app.get('/')
def index():
    me = {
        'first_name': 'Angel',
        'last_name': 'Valentin',
        'is_online': True,
        'hobbies': 'Guitar'
    }
    return me