#!/bin/bash

num=1024
date_save="`date +'%d_%m_%y_%H_%M_%S'`.status"

HOSTNAME=`hostname`
TIMEZONE="$(cat /etc/timezone) $(date -u "+%Z %z")"
USER=`whoami`
OS=`cat /etc/issue | awk '{print $1,$2,$3}' | tr -s '\r\n' ' '`
DATE="`date +'%d %b %Y %T'`"
UPTIME="`uptime -p`"
UPTIME_SEC="`cat /proc/uptime | cut -d ' ' -f1`"
IP="`hostname -I | cut -d ' ' -f1`"
MASK="`ifconfig | grep $IP | cut -d ' ' -f13`"
GATEWAY="`ip route | grep 'default' | cut -d ' ' -f3`"
RAM_TOTAL=`free -m | awk '/Mem:/{printf "%.3f GB", $2/1024}'`
RAM_USED=`free -m | awk '/Mem:/{printf "%.3f GB", $3/1024}'`
RAM_FREE=`free -m | awk '/Mem/{printf "%.3f GB", $4/1024}'`
SPACE_ROOT=`df /root/ | awk '/\/$/ {printf "%.2f MB", $2/1024}'`
SPACE_ROOT_USED=`df /root/ | awk '/\/$/ {printf "%.2f MB", $3/1024}'`
SPACE_ROOT_FREE=`df /root/ | awk '/\/$/ {printf "%.2f MB", $4/1024}'`
