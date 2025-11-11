#!/bin/bash

# Variabel NODES baru untuk 4 peer GNS3 Anda
NODES="192.168.122.11:8001,192.168.122.12:8002,192.168.122.13:8003,192.168.122.14:8004"

echo "--- [TEST 1: Single PUT to Node 0 (pc-2)] ---"
# Single PUT to node 1 (index 0)
python3 ../program/kvclient.py --nodes $NODES cmd --node 0 "PUT color blue"


echo "--- [TEST 2: Single GET from Node 1 (pc-3)] ---"
# GET from node 2 (index 1)
python3 ../program/kvclient.py --nodes $NODES cmd --node 1 "GET color"


echo "--- [TEST 3: MEMICU RACE CONDITION] ---"
# Race two writers (great for no-mutex demo)
python3 ../program/kvclient.py --nodes $NODES race "PUT color blue" "PUT color red"


echo "--- [TEST 4: MEMERIKSA KONSISTENSI DATA] ---"
echo "--- [Menunggu 1 detik untuk replikasi...] ---"
# Jeda ini PENTING untuk GNS3 agar replikasi selesai sebelum dicek
sleep 1

# Read the key from ALL nodes after the race
python3 ../program/kvclient.py --nodes $NODES getall color