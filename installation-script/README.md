#!/bin/bash

# Change to root user

sudo su

# Update package lists

sudo apt-get update -y

# Install Apache2 (Ubuntu's equivalent of httpd)

sudo apt-get install -y apache2

# Install unzip utility in case it's not already installed

sudo apt-get install -y unzip

# Install AWS Cli

sudo apt install awscli

# Change directory to the web root

cd /var/www/html
rm -rf index.html

# Download the website archive from S3 bucket

aws s3 sync s3://yt-demo-s3-bucket .

# Unzip the downloaded file

unzip OVO-bicycle-website.zip

# Copy the website content to the web root

cp -r html/\* /var/www/html/

# Clean up the downloaded and unpacked files

rm -rf OVO-bicycle-website.zip html

# Enable and start Apache2 service

sudo systemctl enable apache2
sudo systemctl start apache2
