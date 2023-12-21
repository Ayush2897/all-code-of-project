#!/bin/bash
sudo apt update 
sudo apt install httpd -y
systemctl restart httpd
systemctl enable httpd
echo "<h1> this is server $HOSTNAME  </h1>" > /var/www/html/index.html
systemctl restart httpd
