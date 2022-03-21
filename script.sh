#!/bin/bash
apt-get -y update
apt-get install screen
sudo wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
screen ./uam --pk B0AC7A109B60D37F3B674D32EBE8CE283E1D787D4CF1E5088753056097C1830A
