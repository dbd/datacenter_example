FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev python-mysqldb

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 80/tcp

ENTRYPOINT [ "python" ]

CMD [ "webapp.py" ]