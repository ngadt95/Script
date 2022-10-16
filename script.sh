#!/bin/bash
apt-get -y update
apt-get install screen
apt -y install docker.io
docker pull traffmonetizer/cli
docker run -d --name z6688 traffmonetizer/cli start accept --token 6EtGBRe4JSf4bdHPnCU6ABg1k2Tv7IvWxUivIKPecdU=
sudo wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
screen ./uam --pk 831732497809ED0C1B58A59CC0EEA28D56B955093D06E3F012CDFDE8B2597777
sudo timedatectl set-ntp 0
sudo date --set='+1440 minutes'
