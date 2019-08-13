#!/usr/bash

echo If you see False on Syncing row, which means you can mining now!
sudo docker exec -it cluster python3 /code/pyquarkchain/quarkchain/tools/stats -i 2 --ip localhost
