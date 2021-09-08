# alef

# How to run app locally:
```
run --name some-mysql -v ./db:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:8
python3 app/plesk_mysql_connection_pool.py
```
# how to run docker-compose app
```
docker-compose up -d
```

# connect to app
https://localhost:5000