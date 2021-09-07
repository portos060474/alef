# Stage 1
FROM python:3.9-alpine AS builder
WORKDIR /app
RUN apk add py3-pip

RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

# Stage 2 
FROM python:3.9-alpine
WORKDIR /app
COPY --from=builder /app /app
COPY requirements.txt .
COPY plesk_mysql_connection_pool.py .
RUN pip install  -r requirements.txt

# Execution
ENTRYPOINT ["python3"]
CMD ["plesk_mysql_connection_pool.py"]