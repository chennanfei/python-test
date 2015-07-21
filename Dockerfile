FROM ubuntu:14.04

ENV version 2.3.5

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN mkdir /app
WORKDIR /app

COPY *.txt /app/requirements.txt
RUN pip install -r requirements.txt

EXPOSE 80
CMD ["./bin/run.sh"]
