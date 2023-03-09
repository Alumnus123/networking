# an object of WSGI application
from flask import Flask


app = Flask(__name__)  # Flask constructor


# A decorator used to tell the application
# which URL is associated function
@app.route('/test')
def hello():
    return 'HELLO'


@app.route('/check_sum')
def sum_numbers():
    a, b = 1, 2
    c = a+b
    return str(c)


if __name__ == '__main__':
    app.run()
