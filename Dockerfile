FROM centos:7
MAINTAINER
ENV VERSION 1.1

COPY epel.repo /etc/yum.repos.d/
COPY RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/

RUN yum update -y; yum clean all

RUN yum install -y ansible; yum clean all

VOLUME /etc
