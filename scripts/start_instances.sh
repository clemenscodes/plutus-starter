#!/bin/sh

# Wallet 1
curl -s -H "Content-Type: application/json" \
  --request POST \
  --data '{"caID": "GameContract", "caWallet":{"getWallet": 1}}' \
  http://localhost:9080/api/contract/activate | jq

# Wallet 2
curl -s -H "Content-Type: application/json" \
  --request POST \
  --data '{"caID": "GameContract", "caWallet":{"getWallet": 2}}' \
  http://localhost:9080/api/contract/activate | jq
