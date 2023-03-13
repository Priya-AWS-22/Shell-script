#!/bin/bash

set -e

yum install nginx -y

curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-main README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf

systemctl enable nginx
systemctl start nginx


# 3 observation:

# 1) Few are my script fails. still my script executed irrespective of the failure : set -e
# 2) Need to have root privilege before installing
# 3) information should be either success or failure
