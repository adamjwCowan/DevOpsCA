#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#Install pm2
sudo npm install -g pm2
#stop instances running
pm2 stop example_app
#change directory
cd SimpleApplication
#install dependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
#start application
pm2 start ./bin/www --name example_app