from flask import Flask

app = Flask(__name__)


@app.route('/testcase')
def product():
    a = 10
    b = 20
    return str(a * b)


app.run()
