#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "<h1> Waheguru Ji pls get me stable, good job fast </h1>" > /var/www/html/index.html

#! /bin/bash
#yum update -y
#yum install ec2-instance-connect
#yum install -y httpd
#systemctl start httpd
#systemctl enable httpd
#echo "<h1> Waheguru Ji pls get me stable, good job fast </h1>" | sudo tee /var/www/html/index.html

#yum update -y
#amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
#yum install -y httpd mariadb-server
#systemctl start httpd
#systemctl enable httpd
#usermod -a -G apache ec2-user
#chown -R ec2-user:apache /var/www
#chmod 2775 /var/www
#find /var/www -type d -exec chmod 2775 {} \;
#find /var/www -type f -exec chmod 0664 {} \;
#echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php