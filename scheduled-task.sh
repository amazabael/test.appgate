#!/bin/sh

# crontab
crontab -l > mycron
#echo new cron into cron file
echo "*/4 * * * * /script.sh" >> mycron

#install new cron file
crontab mycron
rm mycron






