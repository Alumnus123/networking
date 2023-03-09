from flask import Flask, request

app = Flask(__name__)


@app.route('/dict_post', methods=['POST'])
def dict_post():
    key1 = request.form['k1']
    value1 = request.form['v1']
    key2 = request.form['k2']
    value2 = request.form['v2']
    dict_create = {key1: value1, key2: value2}
    d = {}
    for k, v in dict_create.items():
        d[v] = k
    return d


app.run()
