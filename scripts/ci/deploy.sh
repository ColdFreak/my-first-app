#!/usr/bin/env bash

commit_id=$(git log --format="%H" -n 1)
datetime=$(date)
rabbitmqadmin -H 210.140.87.185 -P 12345 --ssl -u deploy -p deploy publish exchange=rel-exchange routing_key=rel-queue payload="{\"branch\": \"develop\", \"datetime\": \"$datetime\", \"commit_id\": \"$commit_id\"}"
