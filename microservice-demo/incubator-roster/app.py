from flask import Flask, request
import random
import json

app = Flask(__name__)

lookup = json.load(open("roster.json"))
people = list(lookup.keys())

def make_str_response(response):
    return response + '\n' if response[-1] != '\n' else response

@app.route("/student")
def hello():
    return make_str_response("TODO")

@app.route("/<studentid>/info")
def langauge(studentid):
    return make_str_response("TODO [{}]".format(studentid))

@app.route("/healthcheck")
def healthcheck():
    return {"name": "incubator-roster-service"}

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8765)    
