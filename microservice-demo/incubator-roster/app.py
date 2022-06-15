from flask import Flask, request
import random
import json

app = Flask(__name__)

lookup = json.load(open("greetings.json"))
greetings = list(lookup.keys())

def make_str_response(response):
    return response + '\n' if response[-1] != '\n' else response

@app.route("/hello")
def hello():
    return make_str_response(random.choice(greetings))

@app.route("/language")
def langauge():
    term = request.args.get("phrase")
    if term is None:
        return make_str_response("You didn't specify a phrase!")
    
    response = lookup.get(term)

    if response is None:
        return make_str_response("The server does not understand that phrase!")

    return make_str_response(response)

@app.route("/healthcheck")
def healthcheck():
    return {"name": "incubator-roster-service"}

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8765)    
