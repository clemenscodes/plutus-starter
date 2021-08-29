#!/bin/sh

echo "import Plutus.Contracts.Game"
echo "import Ledger.Ada"
echo "args = LockParams { secretWord = \"eagle\", amount = lovelaceValueOf 90 }"
echo "import Data.Aeson"
echo "import Data.ByteString.Lazy.Char8 as BSL"
echo "BSL.putStrLn $ encode args"
