#!/bin/sh
apt-get update -y
apt-get install apache2 -y
sudo mkdir -p /var/www/example.com/public_html
sudo mkdir -p /var/www/test.com/public_html
sudo chown -R $USER:$USER /var/www/example.com/public_html
sudo chown -R $USER:$USER /var/www/test.com/public_html
sudo chmod -R 755 /var/www
sudo touch /var/www/example.com/public_html/index.html
Hostname=$(hostnamectl | grep 'hostname')
sudo rm /var/www/html/index.html
sudo touch /var/www/html/index.html
sudo echo "Web Server with $Hostname" > /var/www/html/index.html
service apache2 restart
