#!/bin/bash

docker run -it --name kafka-client --network=kafka_network --entrypoint /bin/bash learning/kafka-client:1.0.0
