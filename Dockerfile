FROM python:3.11.0-slim-buster
RUN apt update && apt install vim sqlite3 libsqlite3-dev -y

EXPOSE 2222

WORKDIR /opt
COPY requirements.txt .

RUN pip install -r requirements.txt
