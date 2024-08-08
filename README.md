# course-kafka

Kafka course exercises

## exercises

1. Create Docker images.
2. Create Kafka Cluster.
3. Create Kafka Client Command Line.

## client commands

1. List of Topics of Cluster.

    ```sh
    ./kafka-topics.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --list
    topic1
    topic2
    ```

2. Create Topics

    ```sh
    ./kafka-topics.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --create --topic base-topic --partitions 1 --replication-factor 1
    Created topic base-topic.
    ```
