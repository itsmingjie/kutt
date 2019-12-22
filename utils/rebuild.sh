#!/bin/sh

echo '=============================='
echo 'Pulling updates from repository...'
sudo git remote get-url origin 
sudo git pull

echo '=============================='
echo 'Rebuilding Server & Client...'
sudo npm run build

echo '=============================='
sudo service kutt restart