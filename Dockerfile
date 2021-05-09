FROM python:3.9.5-alpine
MAINTAINER Johnie

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D apprunner
USER apprunner



