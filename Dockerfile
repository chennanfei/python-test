FROM index.alauda.cn/dubuqingfeng/centos7-mongodb

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN mkdir /app
WORKDIR /app

ENV version 2.3.3
COPY *.txt /app/requirements.txt
RUN ls -al requirements.txt
RUN pip install -r requirements.txt

COPY . /app
WORKDIR /app

RUN sleep 5

ENV version 2.3.3
RUN date
RUN ls -al
RUN ls -al bin
RUN ls -al config

EXPOSE 80
CMD ["./bin/run.sh"]
