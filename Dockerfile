FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN date
RUN ls -al /requirements.txt
RUN mkdir /app
COPY bin /app
WORKDIR /app
RUN ls -al
CMD ["./bin/run.sh"]
