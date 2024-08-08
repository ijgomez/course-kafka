#!/bin/bash

docker compose --project-directory ./kafka-cluster down

## Remove temporal data directory
rm -rf ./kafka-cluster/data