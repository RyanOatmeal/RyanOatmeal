FROM docker.io/library/debian:sid as builder

RUN apt update
RUN apt install -y guix 