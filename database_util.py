import mysql.connector


class Database:
    def __init__(self):
        self.host = "https://mysql.com"
        self.user = "puja",
        self.password = "Puja@123",
        self.database = "geeks4geeks"

    def execute_query(self, query):
        dataBase = mysql.connector.connect(
            self.host,
            self.user,
            self.password,
            self.database)
        cursorObject = dataBase.cursor()
        result = cursorObject.execute(query)
        cursorObject.close()
        dataBase.close()
        return result
