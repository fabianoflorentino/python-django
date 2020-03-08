FROM python:3.7-alpine

COPY requirements.txt .

RUN apk add git wget curl\
  && adduser --disabled-password --gecos "" django \
  && pip install -r requirements.txt

USER django

WORKDIR /app

ENTRYPOINT [ "sh" ]