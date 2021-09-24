# Docker image for caoofduty/hadoop-base file run
# VERSION 0.0.1
# Author: lixiang
# 基础镜像使用 caoofduty/centos-ssh:dev
FROM caoofduty/centos-ssh:dev
MAINTAINER tron.lixiang@gmail.com
ADD jdk-8u281-linux-x64.tar.gz /usr/local/
RUN mv /usr/local/jdk1.8.0_281 /usr/local/jdk1.8
ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH

ADD hadoop-3.2.0.tar.gz /usr/local
RUN mv /usr/local/hadoop-3.2.0 /usr/local/hadoop
ENV HADOOP_HOME /usr/local/hadoop
ENV PATH $HADOOP_HOME/bin:$PATH

#RUN yum install -y which sudo