from flask import Flask

app = Flask(__name__)


@app.route('/test3')
def add():
    a, b = 2, 3
    c = str(a + b)
    return c


if __name__ == '__main__':
    app.run()


@app.route('/test4_post', methods=['POST'])
def mult():
    a, b = 2, 8
    c = str(a * b)
    return c


if __name__ == '__main__':
    app.run()
