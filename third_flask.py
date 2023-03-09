from flask import Flask, request

app = Flask(__name__)


@app.route('/test2')
def list_sum():
    list_num = [1, 2, 3, 4, 5, 6]
    list_div = []
    for i in list_num:
        if i % 3 == 0:
            list_div.append(i)
    return list_div


@app.route('/test_post', methods=['POST'])
def sum_fun():
    num = request.form['number']
    num1 = request.form['number1']
    total = int(num) + int(num1)
    return str(total)


if __name__ == '__main__':
    app.run()
