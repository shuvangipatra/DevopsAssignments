#!/bin/bash
# mongodb.sh - Backend EC2 setup
sudo yum update -y
sudo amazon-linux-extras enable mongodb4.0
sudo yum install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
