#!/bin/sh
apt-get -y update
apt-get -y install nginx
sudo rm /etc/nginx/nginx.conf
sudo touch /etc/nginx/nginx.conf
sudo chmod 777 /etc/nginx/nginx.conf
sudo echo -e "events {}\nhttp {\n  upstream default {\n    server 195.114.145.13;\n    server 195.114.145.14;\n  }\n  server {\n    listen 80;\n    server_name www.domain.com;\n    location / {\n      root /var/www/html/;\n      index  index.html index.htm;\n      proxy_pass http://default;\n    }\n  }\n}\n" > /etc/nginx/nginx.conf
#sudo nginx -t && sudo service nginx start
#sudo clean=no service nginx start
service nginx start
