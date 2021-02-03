FROM python:3.10-rc-buster
MAINTAINER Gary

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN useradd -s /bin/bash user
USER user

