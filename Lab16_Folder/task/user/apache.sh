#!/bin/bash
# apache.sh - Frontend EC2 setup
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

echo "<h1>Frontend Server Running</h1>" | sudo tee /var/www/html/index.html
