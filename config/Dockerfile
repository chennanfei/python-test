FROM centos:6.6

RUN yum update -y
RUN yum install -y which tar curl git
RUN gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
