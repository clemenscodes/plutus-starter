#!/bin/sh

: '
import Plutus.Contracts.Game
import Ledger.Ada
args = LockParams { secretWord = "eagle", amount = lovelaceValueOf 90 }
import Data.Aeson
import Data.ByteString.Lazy.Char8 as BSL
BSL.putStrLn $ encode args
'

curl -s -H "Content-Type: application/json" \
  -X POST \
  --data '{"amount":{"getValue":[[{"unCurrencySymbol":""},[[{"unTokenName":""},90]]]]},"secretWord":"eagle"}' \
  http://localhost:9080/api/contract/instance/$INSTANCE_ID/endpoint/lock
