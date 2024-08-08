FROM ubuntu:22.04

## Update Operative System
RUN apt-get update && \
    apt-get install openjdk-11-jdk -y && \
    apt-get install nano wget -y

## Environment Settings
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

## Download kafka
RUN wget https://downloads.apache.org/kafka/3.7.0/kafka_2.13-3.7.0.tgz

## Install kafka
RUN tar -xvf kafka_2.13-3.7.0.tgz && \
    mv kafka_2.13-3.7.0 kafka && \
    rm kafka_2.13-3.7.0.tgz

WORKDIR /kafka