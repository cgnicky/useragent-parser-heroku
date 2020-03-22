import flask

app = flask.Flask(__name__)

@app.route("/")
def index():
    text = "Hello World"
    return text

