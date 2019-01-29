# FROM golang:1.11-alpine as builder
FROM alpine:latest

# get updates and install necessary packages for cicleci
RUN apk update 
RUN apk add git 

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.53/hugo_0.53_Linux-64bit.tar.gz
RUN tar -C /usr/bin -zxf hugo_0.53_Linux-64bit.tar.gz hugo

RUN hugo version