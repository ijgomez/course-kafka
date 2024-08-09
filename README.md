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

4. Create Topic with 5 partitions and 1 replica

    ```sh
    ./kafka-topics.sh --bootstrap-server kafka3:9093 --create --topic 5p1r --partitions 5 --replication-factor 1
    Created topic 5p1r.
   ```

    ```sh
    ./kafka-topics.sh --bootstrap-server kafka3:9093 --describe
    Topic: 5p1r	TopicId: XHy3fnLnR3GZ2a6AQ3tOyQ	PartitionCount: 5	ReplicationFactor: 1	Configs: 
        Topic: 5p1r	Partition: 0	Leader: 3	Replicas: 3	Isr: 3
        Topic: 5p1r	Partition: 1	Leader: 1	Replicas: 1	Isr: 1
        Topic: 5p1r	Partition: 2	Leader: 2	Replicas: 2	Isr: 2
        Topic: 5p1r	Partition: 3	Leader: 3	Replicas: 3	Isr: 3
        Topic: 5p1r	Partition: 4	Leader: 1	Replicas: 1	Isr: 1
    Topic: base-topic	TopicId: K5cD1h6QS6uXwra3Xm465Q	PartitionCount: 1	ReplicationFactor: 1	Configs: 
        Topic: base-topic	Partition: 0	Leader: 1	Replicas: 1	Isr: 1
   ```

5. Create Topic with 2 partitions and 2 replica

    ```sh
    ./kafka-topics.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --create --topic 2p2r --partitions 2 --replication-factor 2
    Created topic 2p2r.
   ```

6. Producer of messages in a topic

    ```sh
    ./kafka-console-producer.sh  --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --topic 2p2r
    ```

7. Consumer of messages in a topic

    ```sh
    ./kafka-console-consumer.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --topic 2p2r
    ```

8. Consumer of messages in a topic, from beginning

    ```sh
    ./kafka-console-consumer.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --from-beginning --topic 2p2r
    ```

9. Describe Groups of Consumer

    ```sh
    ./kafka-consumer-groups.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --describe --all-groups

    Consumer group 'console-consumer-11994' has no active members.

    Consumer group 'console-consumer-20056' has no active members.
    ```

10. Associate a topic to a consumer group

    ```sh
    ./kafka-console-consumer.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --topic 2p2r --group EquipoA
    ```

    ```sh
    ./kafka-consumer-groups.sh --bootstrap-server kafka1:9091,kafka2:9092,kafka3:9093 --describe --all-groups

    GROUP           TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID                                           HOST            CLIENT-ID
    EquipoA         2p2r            0          12              12              0               console-consumer-39b2290f-f71a-444f-b0c9-5f32b719d8ae /10.0.2.15      console-consumer
    EquipoA         2p2r            1          12              12              0               console-consumer-f39b2286-326c-46a3-9185-dac38e393d65 /10.0.2.15      console-consumer
    ```
