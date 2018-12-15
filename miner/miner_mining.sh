#!/usr/bash

echo "Start mining..."
docker exec -it qkcminer bash /code/pyquarkchain/quarkchain/tools/quick_miner_tool.sh
