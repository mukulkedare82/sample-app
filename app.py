from flask import Flask

app = Flask(__name__)

APP_HOST='0.0.0.0'
APP_PORT=5000

@app.route('/')
def index():
    return 'My Sample App'

if __name__ == '__main__':
  app.run(host=APP_HOST, port=APP_PORT)


