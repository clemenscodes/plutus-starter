#!/bin/sh

curl -s http://localhost:9080/api/contract/instance/$INSTANCE_ID/status | jq
