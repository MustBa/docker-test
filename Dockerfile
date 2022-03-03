FROM ubuntu:18.04 AS build-env

USER root
RUN apt-get update  && apt install -y \
                        cmake\
                        build-essential\
                        libncurses5
RUN pwd
RUN 'ls -ltr'
RUN find . -name "docker-test"

RUN cmake .
RUN ./example
