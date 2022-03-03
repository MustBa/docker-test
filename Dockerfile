FROM ubuntu:18.04

USER root
RUN apt-get update  && apt install -y \
                        cmake\
                        build-essential\
                        libncurses5

WORKDIR /myapp
WORKDIR /build

RUN cmake ../
RUN ./example
