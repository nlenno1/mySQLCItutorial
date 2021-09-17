import os
import pymysql

# Get username
username = os.getenv('C9_USER')

#Connect to database
connection = pymysql.connect(host = 'localhost', user=username, password='', db='Chinook')

try:
    #Run a query
    with connection.cursor() as cursor:
        sql = "SELECT * FROM Artist LIMIT 10;"
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
finally:
    #Close the connection to SQL regardles of whether the above was successful
    connection.close()