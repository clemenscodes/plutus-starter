#!/bin/sh

curl -s -H "Content-Type: application/json" \
  -X POST \
  --data '{"guessWord": "eagle"}' \
  http://localhost:9080/api/contract/instance/$INSTANCE_ID/endpoint/guess
