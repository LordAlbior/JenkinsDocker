FROM jenkins:latest
MAINTAINER Albert Almeida

ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libc6:i386
RUN apt-get install -y sudo
RUN usermod -aG sudo jenkins

WORKDIR /var/jenkins_home
