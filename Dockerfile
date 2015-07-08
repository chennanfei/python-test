FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN date
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN ls -al requirements.txt
RUN pip install -r requirements.txt
COPY config /app/config
COPY bin /app/bin
ENV version 2.1
RUN ls -al
RUN ls -al bin
RUN ls -al config
RUN curl -X POST http://52.25.130.118:8080/v1/builds -u chiefman:111111
EXPOSE 80
CMD ["./bin/run.sh"]
