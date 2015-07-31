#!/bin/bash
/etc/init.d/uwsgi start &
service nginx start &
sleep 2
tail -f /var/log/nginx/* /var/log/uwsgi/*/*
