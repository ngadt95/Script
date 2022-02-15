#!/bin/bash
apt-get -y update
apt-get install screen
sudo wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
screen ./uam --pk 3DE4D4508CA01B041C916A7F4810BE40C9538B28BA0AFDE833DC5491E7B3CA53
