FROM ubuntu:18.04

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="07.03.2020"

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository --yes --update ppa:deadsnakes/ppa \
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt-get install -y python3.6 \
    && apt-get install -y python3-pip libssl-dev \
    && apt-get install -y locales \
    && apt-get install -y language-pack-en

ENV LANG en_US.UTF-8 
ENV LANGUAGE en_US:en 
ENV LC_ALL en_US.UTF-8

RUN apt-get install -y ansible \
    && python3 -m pip install --upgrade setuptools \
    && python3 -m pip install molecule
