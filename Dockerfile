FROM python:3.12.5-slim
ENV PYTHONUNBUFFERED=1

WORKDIR /django_tutorial
COPY requirements.txt /django_tutorial
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . /django_tutorial/
