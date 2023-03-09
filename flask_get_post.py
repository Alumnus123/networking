from flask import Flask, request

app = Flask(__name__)


@app.route('/get_test')
def add():
    a, b = 10, 20
    return str(a + b)


@app.route('/post_test', methods=['POST'])
def mult():
    request_body = request.json
    num = request_body['number']
    num1 = request_body['number1']
    result = int(num) * int(num1)
    return str(result)


if __name__ == "__main__":
    app.run()
