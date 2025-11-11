#!/bin/bash
python3 ../program/kv.py --id 1 --tcp 8001 --udp 8101 \
--peers 192.168.122.12:8002=2,192.168.122.13:8003=3,192.168.122.14:8004=4 \
--logger-addr 192.168.122.10:9000 --numnodes 4 --use-mutex 0