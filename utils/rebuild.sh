#!/bin/sh

echo \n
echo ==============================
echo Pulling updates from repository...
sudo git remote get-url origin 
sudo git pull

echo \n
echo ==============================
echo Rebuilding Server & Client...
sudo npm run build

echo \n
echo ==============================
sudo service kutt restart