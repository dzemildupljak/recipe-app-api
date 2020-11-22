FROM python:3.9.0-alpine3.12
MAINTAINER My Recipe App SMARTSTART

ENV PYTHONUNBAFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app


RUN adduser -D user
USER user

