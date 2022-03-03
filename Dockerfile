FROM ubuntu:18.04 AS build-env

USER root
RUN apt-get update  && apt install -y \
                        cmake\
                        build-essential\
                        libncurses5

WORKDIR /test            
