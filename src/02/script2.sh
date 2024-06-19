#!/bin/bash

main="../main.sh"
if [ ! -f "$main" ]; then
    echo "main.sh not found"
    exit 1
fi

source "$main"

echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $DATE"
echo "UPTIME = $UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
echo "MASK = $MASK"
echo "GATEWAY = $GATEWAY"
echo "RAM_TOTAL = $RAM_TOTAL"
echo "RAM_USED = $RAM_USED"
echo "RAM_FREE = $RAM_FREE"
echo "SPACE_ROOT = $SPACE_ROOT"
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"

read -p "Write to a separate stutus file? (Y/N) " answ
if [ "$answ" == "Y" ]||[ "$answ" == "y" ]; then
	echo "HOSTNAME = $HOSTNAME" >> "$date_save"
	echo "TIMEZONE = $TIMEZONE" >> "$date_save"
	echo "USER = $USER" >> "$date_save"
	echo "OS = $OS" >> "$date_save"
	echo "DATE = $DATE" >> "$date_save"
	echo "UPTIME = $UPTIME" >> "$date_save"
	echo "UPTIME_SEC = $UPTIME_SEC" >> "$date_save"
	echo "IP = $IP" >> "$date_save"
	echo "MASK = $MASK" >> "$date_save"
	echo "GATEWAY = $GATEWAY" >> "$date_save"
	echo "RAM_TOTAL = $RAM_TOTAL" >> "$date_save"
	echo "RAM_USED = $RAM_USED" >> "$date_save"
	echo "RAM_FREE = $RAM_FREE" >> "$date_save"
	echo "SPACE_ROOT = $SPACE_ROOT" >> "$date_save"
	echo "SPACE_ROOT_USED = $SPACE_ROOT_USED" >> "$date_save"
	echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE" >> "$date_save"

	echo "Done"
fi
