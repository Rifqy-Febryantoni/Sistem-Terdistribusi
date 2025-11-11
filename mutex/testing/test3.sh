#!/bin/bash
NODES="192.168.122.11:8001,192.168.122.12:8002,192.168.122.13:8003"

# Single PUT to node 1
python3 ./kvclient.py --nodes $NODES cmd --node 1 "PUT color black"
python3 ./kvclient.py --nodes $NODES cmd --node 2 "PUT color magenta"
python3 ./kvclient.py --nodes $NODES cmd --node 2 "PUT warna kuning"
python3 ./kvclient.py --nodes $NODES cmd --node 2 "PUT warna kuning"
python3 ./kvclient.py --nodes $NODES race "PUT color blue" "PUT color green" 
python3 ./kvclient.py --nodes $NODES race "PUT warna oranye" "PUT warna hijau" 

echo "-------HASIL----"
python3 ./kvclient.py --nodes $NODES getall color
echo "-------HASIL----"
python3 ./kvclient.py --nodes $NODES getall warna