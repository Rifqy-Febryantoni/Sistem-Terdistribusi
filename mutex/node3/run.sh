#!/bin/bash
python3 ../program/kv.py --id 3 --tcp 8003 --udp 8103 \
--peers 192.168.122.11:8001=1,192.168.122.12:8002=2,192.168.122.14:8004=4 \
--logger-addr 192.168.122.10:9000 --numnodes 4 --use-mutex 0