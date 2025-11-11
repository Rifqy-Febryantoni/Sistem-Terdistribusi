#!/bin/bash
python3 ../program/kv.py --id 4 --tcp 8004 --udp 8104 \
--peers 192.168.122.11:8001=1,192.168.122.12:8002=2,192.168.122.13:8003=3 \
--logger-addr 192.168.122.10:9000 --numnodes 4 --use-mutex 0