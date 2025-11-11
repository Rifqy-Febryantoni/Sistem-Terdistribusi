#!/bin/bash
python3 ../program/peer_node.py \
    --name A --listen 0.0.0.0 5000 \
    --peers A@192.168.122.11:5000 B@192.168.122.12:5001 D@192.168.122.13:5002 \
    --logger 192.168.122.10 9999 \
    --offset-ms 600 \
    --initiate-broadcast --msg "Hello from A"
