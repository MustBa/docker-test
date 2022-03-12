FROM ubuntu:18.04

RUN apt-get update  && apt install -y \
                        cmake\
                        build-essential\
                        libncurses5 \
                        vim 

WORKDIR /test            
COPY * ./
