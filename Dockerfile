FROM python:3.8-slim

USER root

RUN apt-get update && \
    apt-get install -y vim less && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools

COPY ./requirements.txt ./

EXPOSE 8080

RUN pip install -r ./requirements.txt