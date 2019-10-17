#!/bin/bash
unlink /etc/nginx/sites-enabled/default
cd /var/www/html/
mv Node-proxy.conf  /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/Node-proxy.con /etc/nginx/sites-enabled/Node-proxy.con
ng serve
npm start >/dev/null 2>&1 &
