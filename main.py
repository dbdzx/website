from flask import Flask, render_template
from flask_socketio import SocketIO, send

app = Flask(__name__)
app.config['SECRET'] == "secret!123"
socketio = SocketIO(app, cors_allowed_origins = "*")
 
@app.route('/')
def hello_world():
 return 'Moe Flask приложение в контейнере Docker на сервере gunicorn!'
 
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
    