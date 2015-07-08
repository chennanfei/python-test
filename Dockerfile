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
ENV version 1.0
RUN ls -al
RUN ls -al bin
RUN ls -al config
EXPOSE 80
CMD ["./bin/run.sh"]
