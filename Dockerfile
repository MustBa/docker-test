FROM ubuntu:18.04

WORKDIR /myapp
WORKDIR /build

RUN cmake ../
RUN ./example
