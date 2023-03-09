from flask import Flask, request
from database_util import Database as Db

app = Flask(__name__)


@app.route('/test_project_product_price', methods=['POST'])
def product_price():
    request_body = request.json
    product_id = request_body['product_id']
    product_name = request_body['product_name']

    query = f"select product_price from product.product_table where product_id={product_id} and " \
            f"product_name={product_name}"

    database = Db()
    price_dataframe = database.execute_query(query)
    price = price_dataframe['product_price']

    result = {'product_price': price}
    return result


if __name__ == "__main__":
    app.run(debug=True)
