#!/bin/bash
cd /home/ec2-user/app/
ng serve
npm start >/dev/null 2>&1 &
