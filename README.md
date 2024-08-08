# course-kafka

Kafka course exercises

## exercises

1. Create Docker images.
2. Create Kafka Cluster.
3. Create Kafka Client Command Line.
4. Create Kafka Cluster with 3 nodes.

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

3. Describe Topic

    ```sh
    ./kafka-topics.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --describe --topic base-topic
    Topic: base-topic	TopicId: K5cD1h6QS6uXwra3Xm465Q	PartitionCount: 1	ReplicationFactor: 1	Configs: 
        Topic: base-topic	Partition: 0	Leader: 1	Replicas: 1	Isr: 1
   ```
