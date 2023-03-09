from flask import Flask

app = Flask(__name__)  # Flask constructor


@app.route('/test1')
def multiplication():
    a, b = 2, 3
    c = str(a * b)
    return c


if __name__ == "__main__":
    app.run()
