#!/bin/bash

while true; do
        if [ ! `pgrep graftnoded` ]; then
                graftnoded --testnet --out-peers 10 --db-salvage --enforce-dns-checkpointing --max-concurrency 3 --tos-flag 1 --detach &
                for ((i=0; i<600; i+=5)); do
                        sleep 5
                        if [ ! `pgrep graftnoded` ]; then
                                break
                        fi
                done
                #killall -9 graftnoded > /dev/null 2>&1 # Warning this will kill graftnoded inside each hour
        fi
        sleep 5
done


