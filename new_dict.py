from flask import Flask, request

app = Flask(__name__)


@app.route('/number_of_item_post', methods=['POST'])
def dict_post():
    # key1 = request.form['k1']
    # value1 = request.form['v1']
    # key2 = request.form['k2']
    # value2 = request.form['v2']
    # dict_create = {key1: value1, key2: value2}

    string_input = request.form['input']

    d = {}
    for i in string_input:
        if i in d.keys():
            d[i] += 1
        else:
            d[i] = 1
    return d



app.run()
