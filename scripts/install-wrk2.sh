#!/bin/bash

echo "Installing wrk2..."
sudo apt-get install make luarocks libssl-dev libz-dev build-essential -y
sudo luarocks install luasocket
