FROM index.alauda.cn/alauda/mysql:latest

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN mkdir /app
WORKDIR /app

ENV version 2.3.5
COPY *.txt /app/requirements.txt
RUN ls -al requirements.txt
RUN pip install -r requirements.txt

ENV version 2.3.4
COPY config /app/config
COPY bin /app/bin

RUN sleep 15

ENV version 2.3.3
RUN date
RUN ls -al
RUN ls -al bin
RUN ls -al config
RUN curl -X GET http://52.25.130.118:9080
EXPOSE 80
CMD ["./bin/run.sh"]
