FROM python:3.12.5-slim
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev

WORKDIR /django_tutorial
COPY requirements.txt /django_tutorial
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
