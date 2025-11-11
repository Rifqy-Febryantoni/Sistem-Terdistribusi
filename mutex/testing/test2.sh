#!/bin/bash
NODES="192.168.122.11:8001,192.168.122.12:8002,192.168.122.13:8003"

# Single PUT to node 1
python3 ./kvclient.py --nodes $NODES cmd --node 1 "PUT color red"
python3 ./kvclient.py --nodes $NODES cmd --node 2 "PUT color blue"

# GET from node 2
python3 ./kvclient.py --nodes $NODES cmd --node 2 "GET color"
python3 ./kvclient.py --nodes $NODES cmd --node 0 "GET color"