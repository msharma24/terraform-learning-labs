#!/bin/bash
# A script that runs the NodeJS app.

set -e

# Send the log output from this script to user-data.log, syslog, and the console
# From: https://alestic.com/2010/12/ec2-user-data-output/
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

echo "Starting example nodejs  app on port ${port} and piping all \
    log output to syslog"
cd /home/ubuntu/example-nodejs-app
sudo pm2 start bin/www
sudo pm2 save
