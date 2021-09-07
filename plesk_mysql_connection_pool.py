
import mysql.connector




cnx = mysql.connector.connect(
    user='root', 
    password='my-secret-pw',
    host='127.0.0.1',
    port='13306',
    database='test',
    pool_name = "mypool",
    pool_size = 3
    )

    # cnx.close()