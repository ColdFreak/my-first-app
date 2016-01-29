#!/usr/bin/env bash

#rabbitmqadmin -H 210.140.87.185 -P 12345 --ssl -u deploy -p deploy publish exchange=rel-exchange routing_key=rel-queue payload="greeting from circle ci second time"
$SEND_DEPLOY_MESSAGE
