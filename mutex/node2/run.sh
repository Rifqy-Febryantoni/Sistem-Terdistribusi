#!/bin/bash
python3 ../program/kv.py --id 2 --tcp 8002 --udp 8102 \
--peers 192.168.122.11:8001=1,192.168.122.13:8003=3 \
--logger-addr 192.168.122.10:9000 --numnodes 3 --use-mutex 0