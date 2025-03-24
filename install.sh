#!/bin/bash

sudo apt install -y psmisc screen vim cron
#sudo apt install -y nvidia-cuda-toolkit

sudo service cron start
(crontab -l ; echo "*/5 * * * * $HOME/apoolminer/check.sh") | crontab -
