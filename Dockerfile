FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN date
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY config /app/config
COPY bin /app/bin
EXPOSE 80
RUN ls -al
RUN ls -al bin
RUN ls -al config
CMD ["./bin/run.sh"]
