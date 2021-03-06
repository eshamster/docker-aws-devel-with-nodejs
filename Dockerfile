FROM node:8.10.0-alpine

RUN apk --update add py-pip && \
    pip install awscli &&\
    apk --update add less groff && \
    apk --update add vim

WORKDIR /root

RUN mkdir /root/.aws

COPY credentials config /root/.aws/
COPY .vimrc /root/
