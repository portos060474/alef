
# !flask/bin/python
from flask import Flask, render_template, make_response
import mysql.connector

app = Flask(__name__)



cnx = mysql.connector.connect(
    user='root', 
    password='my-secret-pw',
    host='db',
    port='3306',
    database='test',
    pool_name = "mypool",
    pool_size = 3
    )

    # cnx.close()


@app.route('/healthz', methods=['GET'])
def healthz():
    """
    respond to health check
    """
    return  'ok', 200

@app.route('/log', methods=['GET'])
def log_data():
    """
    Logs data
    """

    curA = cnx.cursor(buffered=True)
    query = ("SELECT * from tutorials_tbl")

    curA.execute(query)

    # Iterate through the result of curA
    my_dict = []

    for (tutorial_id, tutorial_title, tutorial_author, submission_date) in curA:
        print(tutorial_title, tutorial_author, submission_date)
        my_dict.append({'tutorial_title': tutorial_title,
                            'tutorial_author': tutorial_author,
                            'submission_date': submission_date
                            })

    return render_template('index.html', results=my_dict, xxx=1)

if __name__ == '__main__':
    app.run(host='0.0.0.0')


