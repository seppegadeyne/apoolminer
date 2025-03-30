#!/bin/bash

apt install -y psmisc screen vim cron
#apt install -y nvidia-cuda-toolkit

service cron start
(crontab -l ; echo "*/5 * * * * $HOME/apoolminer/check.sh") | crontab -
