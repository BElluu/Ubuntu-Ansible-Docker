FROM ubuntu:18.04

LABEL maintainer="Bartlomiej Komendarczuk" \
      email="bkomendarczuk@gmail.com" \
      release-date="07.03.2020"

RUN apt-get update \
    && apt-get install --yes software-properties-common \
    && add-apt-repository --yes --update ppa:deadsnakes/ppa \
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt-get install --yes python3.6 \
    && apt-get install --yes python3-pip libssl-dev \
    && apt-get install --yes locales \
    && apt-get install --yes language-pack-en

ENV LANG en_US.UTF-8 
ENV LANGUAGE en_US:en 
ENV LC_ALL en_US.UTF-8

RUN apt-get install --yes ansible \
    && python3 -m pip install --upgrade setuptools \
    && python3 -m pip install molecule

