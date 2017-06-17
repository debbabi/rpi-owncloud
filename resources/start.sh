#!/bin/bash

# create directories
mkdir -p /etc/letsencrypt
mkdir -p /var/www/letsencrypt

# Add our hostname and Docker-allocated IP address into /etc/hosts
# HOSTLINE=$(echo $(ip -f inet addr show eth0 | grep 'inet' | awk '{ print $2 }' | cut -d/ -f1) $(hostname) $(hostname -s))
# echo $HOSTLINE >> /etc/hosts
# Disabled for now until this is resolved (lol): https://github.com/dotcloud/docker/issues/2267

#/usr/bin/mysqld_safe &
#/usr/sbin/apache2ctl -D FOREGROUND
#/usr/sbin/apache2ctl -k start
/usr/bin/supervisord -c /etc/supervisor/conf.d/lamp.conf
/bin/bash
