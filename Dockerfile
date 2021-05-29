FROM python:3.8
MAINTAINER segev91.b@gmail.com
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENV FLASK_APP=temperatureConverter.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 80
ENTRYPOINT flask run
