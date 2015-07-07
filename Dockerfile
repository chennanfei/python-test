FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
COPY . /
RUN curl -X POST http://52.25.130.118:8080/v1/builds -u chiefman:111111
CMD ["/run.sh"]
