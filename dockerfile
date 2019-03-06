FROM ubuntu:16.04

MAINTANER Derek Daniels "dbdaniel@mtu.edu"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev python-mysqldb

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]