FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl
RUN date
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN ls -al requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 80
RUN touch $(date +%s).log
RUN ls -al
RUN ls -al bin
RUN ls -al config
CMD ["./bin/run.sh"]
