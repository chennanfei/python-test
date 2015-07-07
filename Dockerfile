FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN curl -X POST http://www.ucdream.com:8080/v1/builds -u chiefman:111111
COPY run.sh /
CMD ["/run.sh"]
