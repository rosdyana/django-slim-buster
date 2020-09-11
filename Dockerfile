FROM python:3.8.1-slim-buster
LABEL maintainer="Rosdyana Kusuma <rosdyana.kusuma@gmail.com>"
ARG PIP3="/root/site/bin/pip3"


RUN apt-get update && apt-get install -qq -y  build-essential --no-install-recommends && \
    apt-get install -qq -y build-essential --no-install-recommends && \
    apt-get install -qq -y postgresql-client --no-install-recommends && \
    apt-get install -qq -y bash --no-install-recommends && \
    apt-get install -qq -y libpq-dev --no-install-recommends

RUN python3.8 -m venv /root/site
RUN ${PIP3} install -U pip
RUN ${PIP3} install django==3.1.1 && \
  ${PIP3} install djangorestframework==3.11.1 && \
  ${PIP3} install requests==2.24.0 && \
  ${PIP3} install gunicorn==20.0.4 && \
  ${PIP3} install psycopg2-binary==2.8.6
  
  
