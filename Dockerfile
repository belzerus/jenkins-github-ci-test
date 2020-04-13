FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install locales
RUN apt-get -y install python
RUN apt-get -y install python3
RUN apt-get -y install python3-pip

RUN pip3 install --no-cache-dir \
    black                       \
    flake8                      \
    isort                       \
    mypy

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

COPY ./app.py /root
WORKDIR /root
CMD python app.py
