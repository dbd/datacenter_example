from flask import Flask
app = Flask(__name__)
import socket

@app.route("/")
def hello():
    hostname = socket.gethostname()
    return "Hello world from {hostname}".format(hostname=hostname)
 
if __name__ == "__main__":
    app.run()
