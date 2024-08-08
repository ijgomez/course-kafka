FROM learning/base-kafka:1.0.0

## Update Operative System
RUN apt-get update && \
    apt-get install telnet -y && \ 
    apt-get install iputils-ping wget -y

WORKDIR /kafka/bin