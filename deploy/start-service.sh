#!/bin/bash
unlink /etc/nginx/sites-enabled/default
cd /home/ec2-user/app/
mv Node-proxy.conf  /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
ng serve
npm start >/dev/null 2>&1 &
