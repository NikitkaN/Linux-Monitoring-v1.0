#!/bin/bash

function get_color_number {
  res=0

  case "$1" in
  1) res=7 ;;
  2) res=1 ;;
  3) res=2 ;;
  4) res=4 ;;
  5) res=5 ;;
  6) res=0 ;;
  esac

  return $res
}

function set_default_colors {
  column1_bg=3
  column1_font=4
  column2_bg=5
  column2_font=4
}

function set_colors {
  column1_bg=${column1_background}
  column1_font=${column1_font_color}
  column2_bg=${column2_background}
  column2_font=${column2_font_color}
}

function set_color_scheme {
  get_color_number $column1_bg
  key_bg_color="\033[4$?m"
  get_color_number $column1_font
  key_font_color="\033[3$?m"
  get_color_number $column2_bg
  value_bg_color="\033[4$?m"
  get_color_number $column2_font
  value_font_color="\033[3$?m"
  default_colors="\033[37m\033[0m"
}

function print_information {
  echo -e "${key_bg_color}${key_font_color}HOSTNAME${default_colors}        = ${value_bg_color}${value_font_color}${HOSTNAME}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}TIMEZONE${default_colors}        = ${value_bg_color}${value_font_color}${TIMEZONE}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}USER${default_colors}            = ${value_bg_color}${value_font_color}${USER}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}OS${default_colors}              = ${value_bg_color}${value_font_color}${OS}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}DATE${default_colors}            = ${value_bg_color}${value_font_color}${DATE}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}UPTIME${default_colors}          = ${value_bg_color}${value_font_color}${UPTIME}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}UPTIME_SEC${default_colors}      = ${value_bg_color}${value_font_color}${UPTIME_SEC}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}IP${default_colors}              = ${value_bg_color}${value_font_color}${IP}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}MASK${default_colors}            = ${value_bg_color}${value_font_color}${MASK}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}GATEWAY${default_colors}         = ${value_bg_color}${value_font_color}${GATEWAY}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}RAM_TOTAL${default_colors}       = ${value_bg_color}${value_font_color}${RAM_TOTAL}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}RAM_USED${default_colors}        = ${value_bg_color}${value_font_color}${RAM_USED}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}RAM_FREE${default_colors}        = ${value_bg_color}${value_font_color}${RAM_FREE}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}SPACE_ROOT${default_colors}      = ${value_bg_color}${value_font_color}${SPACE_ROOT}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}SPACE_ROOT_USED${default_colors} = ${value_bg_color}${value_font_color}${SPACE_ROOT_USED}${default_colors}"
  echo -e "${key_bg_color}${key_font_color}SPACE_ROOT_FREE${default_colors} = ${value_bg_color}${value_font_color}${SPACE_ROOT_FREE}${default_colors}"
}

function print_color_scheme {
  echo -e "\nColumn 1 background = $(if [[ $1 -eq 1 ]] ; then echo "default" ; else echo $column1_bg; fi) $(print_color_textname $column1_bg)"
  echo "Column 1 font color = $(if [[ $1 -eq 1 ]] ; then echo "default" ; else echo $column1_font; fi) $(print_color_textname $column1_font)"
  echo "Column 2 background = $(if [[ $1 -eq 1 ]] ; then echo "default" ; else echo $column2_bg; fi) $(print_color_textname $column2_bg)"
  echo "Column 2 font color = $(if [[ $1 -eq 1 ]] ; then echo "default" ; else echo $column2_font; fi) $(print_color_textname $column2_font)"
}

function print_color_textname {
  case "$1" in
  1) echo "(white)" ;;
  2) echo "(red)" ;;
  3) echo "(green)" ;;
  4) echo "(blue)" ;;
  5) echo "(purple)" ;;
  6) echo "(black)" ;;
  esac
}
