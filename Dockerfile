FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip python-dev libpq-dev git curl

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY run.sh /
CMD ["/run.sh"]
