FROM ubuntu:18.04

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="07.03.2020"

RUN apt-get update
RUN apt-get install --yes software-properties-common

RUN add-apt-repository --yes --update ppa:deadsnakes/ppa
RUN add-apt-repository --yes --update ppa:ansible/ansible

RUN apt-get install --yes python3.6
RUN apt-get install --yes python3-pip
RUN apt-get install --yes libssl-dev

RUN apt-get install --yes locales
RUN apt-get install --yes language-pack-en

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get install --yes ansible
RUN python3 -m pip install --upgrade setuptools
RUN python3 -m pip install molecule
