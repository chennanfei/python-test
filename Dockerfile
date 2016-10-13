FROM index.alauda.cn/library/ubuntu:14.04

RUN mkdir /app
COPY . /app

EXPOSE 80
CMD ["./bin/run.sh"]
