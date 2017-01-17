# import the Flask class from the flask module
from flask import Flask, render_template

import socket
name = socket.gethostname()

# create the application object
app = Flask(__name__)

# use decorators to link the function to a url
@app.route('/')
def home():
    return "Hello, World!"  # return a string

@app.route('/arista')
def arista():
    return "Hi from "+ name +" " 

@app.route('/index')
def index():
    user = {'nickname': 'Miguel'}  # fake user
    return '''
<html>
  <head>
    <title>Home Page</title>
  </head>
  <body>
    <h1>Hello,from ''' + name + ''' This is a demo for VMUG!</h1>
    <img src= "/static/arista.jpg">
    <img src= "/static/vmug.jpg">
  </body>
</html>
'''


# start the server with the 'run()' method
if __name__ == "__main__":
    app.run(host='0.0.0.0')

