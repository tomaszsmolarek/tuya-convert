#!/bin/bash

set -e

# Kali 2019.1a has some auto update process, kill it
sudo lsof -ti /var/lib/dpkg/lock-frontend | sudo xargs --no-run-if-empty kill -9

sudo apt-get update
# sudo apt-get upgrade -y
sudo apt-get install -y dnsmasq hostapd screen curl python3-pip python3-setuptools python3-wheel mosquitto haveged

sudo pip3 install paho-mqtt pyaes tornado

echo "Ready to start upgrade"
