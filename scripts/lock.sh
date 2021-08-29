#!/bin/sh

curl -s -H "Content-Type: application/json" \
  -X POST \
  --data '{"amount":{"getValue":[[{"unCurrencySymbol":""},[[{"unTokenName":""},90]]]]},"secretWord":"eagle"}' \
  http://localhost:9080/api/contract/instance/$INSTANCE_ID/endpoint/lock
