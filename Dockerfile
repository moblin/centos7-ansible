FROM centos:7
MAINTAINER https://github.com/moblin/centos7-ansible
ENV VERSION 1.1

RUN yum update -y; yum clean all
RUN yum install -y epel-release; yum clean all
RUN yum install -y ansible; yum clean all

VOLUME /etc
