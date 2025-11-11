#!/bin/bash

# Variabel NODES baru untuk 4 peer GNS3 Anda
NODES="192.168.122.11:8001,192.168.122.12:8002,192.168.122.13:8003,192.168.122.14:8004"


echo "--- [TEST 1: PUT 'red' ke Node 1 (pc-3)] ---"
# Single PUT to node 1 (index 1)
python3 ../program/kvclient.py --nodes $NODES cmd --node 1 "PUT color red"

echo "--- [TEST 2: PUT 'blue' ke Node 2 (pc-4)] ---"
# Single PUT to node 2 (index 2)
python3 ../program/kvclient.py --nodes $NODES cmd --node 2 "PUT color blue"


# Beri waktu untuk replikasi
sleep 1


echo "--- [TEST 3: GET dari Node 2 (pc-4)] ---"
# GET from node 2 (index 2)
python3 ../program/kvclient.py --nodes $NODES cmd --node 2 "GET color"

echo "--- [TEST 4: GET dari Node 0 (pc-2)] ---"
# GET from node 0 (index 0)
python3 ../program/kvclient.py --nodes $NODES cmd --node 0 "GET color"