#!/bin/bash
# this script will lunch a webserver on our EC2 instance and write a file to it, 
# it will present the private IP address of your instance
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from (private IP address) $(hostname -f)</h1>" > /var/www/html/index.html
