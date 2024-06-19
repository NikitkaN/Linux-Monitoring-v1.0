#!/bin/bash

main="../main.sh"
if [ ! -f "$main" ]; then
    echo "main.sh not found"
    exit 1
fi

source "$main"

count=1
default_colors="\033[37m\033[0m"

function Swich() {
	while [ -n "$1" ]
	do
	if [ "$count" == "1" ]||[ "$count" == "3" ]; then
		case "$1" in
			"1") background_color="\033[47m" ;;
			"2") background_color="\033[41m" ;;
			"3") background_color="\033[42m" ;;
			"4") background_color="\033[46m" ;;
			"5") background_color="\033[45m" ;;
			"6") background_color="\033[40m" ;;
			*) echo "Wrong color - $1" ;;
		esac
		if [ "$count" == "1" ]; then
			clr1="$background_color"
		elif [ "$count" == "3" ]; then
			clr3="$background_color"
		fi
	elif [ "$count" == "2" ]||[ "$count" == "4" ]; then
		case "$1" in
			"1") color="\033[37m" ;;
			"2") color="\033[31m" ;;
			"3") color="\033[32m" ;;
			"4") color="\033[36m" ;;
			"5") color="\033[35m" ;;
			"6") color="\033[30m" ;;
			*) echo "Wrong color - $1" ;;
		esac
		if [ "$count" == "2" ]; then
			clr2="$color"
		elif [ "$count" == "4" ]; then
			clr4="$color"
		fi
	fi
	count=$[ $count + 1 ]
	shift
	done
}

if [ "$#" == "4" ]; then
	if [ "$1" == "$2" ]||[ "$3" == "$4" ]; then
		echo "Wrong!"
	else
		Swich "$1" "$2" "$3" "$4"
	fi
else
	echo "Bad"
	exit 1
fi

echo -e "${clr1}${clr2}HOSTNAME${default_colors}        = ${clr3}${clr4}$HOSTNAME${default_colors}"
echo -e "${clr1}${clr2}TIMEZONE${default_colors}        = ${clr3}${clr4}$TIMEZONE${default_colors}"
echo -e "${clr1}${clr2}USER${default_colors}            = ${clr3}${clr4}$USER${default_colors}"
echo -e "${clr1}${clr2}OS${default_colors}              = ${clr3}${clr4}$OS${default_colors}"
echo -e "${clr1}${clr2}DATE${default_colors}            = ${clr3}${clr4}$DATE${default_colors}"
echo -e "${clr1}${clr2}UPTIME${default_colors}          = ${clr3}${clr4}$UPTIME${default_colors}"
echo -e "${clr1}${clr2}UPTIME_SEC${default_colors}      = ${clr3}${clr4}$UPTIME_SEC${default_colors}"
echo -e "${clr1}${clr2}IP${default_colors}              = ${clr3}${clr4}$IP${default_colors}"
echo -e "${clr1}${clr2}MASK${default_colors}            = ${clr3}${clr4}$MASK${default_colors}"
echo -e "${clr1}${clr2}GATEWAY${default_colors}         = ${clr3}${clr4}$GATEWAY${default_colors}"
echo -e "${clr1}${clr2}RAM_TOTAL${default_colors}       = ${clr3}${clr4}$RAM_TOTAL${default_colors}"
echo -e "${clr1}${clr2}RAM_USED${default_colors}        = ${clr3}${clr4}$RAM_USED${default_colors}"
echo -e "${clr1}${clr2}RAM_FREE${default_colors}        = ${clr3}${clr4}$RAM_FREE${default_colors}"
echo -e "${clr1}${clr2}SPACE_ROOT${default_colors}      = ${clr3}${clr4}$SPACE_ROOT${default_colors}"
echo -e "${clr1}${clr2}SPACE_ROOT_USED${default_colors} = ${clr3}${clr4}$SPACE_ROOT_USED${default_colors}"
echo -e "${clr1}${clr2}SPACE_ROOT_FREE${default_colors} = ${clr3}${clr4}$SPACE_ROOT_FREE${default_colors}"
