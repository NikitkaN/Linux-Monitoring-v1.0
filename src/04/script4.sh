#!/bin/bash
. ./config.conf
. ./lib.sh
. ../main.sh

column1_bg=""
column1_font=""
column2_bg=""
column2_font=""
is_default=0

reg="^[1-6]$"

if ! [[ $column1_background =~ $reg ]] || ! [[ $column1_font_color =~ $reg ]] ||
   ! [[ $column2_background =~ $reg ]] || ! [[ $column2_font_color =~ $reg ]]
then
  set_default_colors
  is_default=1
else
  set_colors
fi

set_color_scheme
print_information
print_color_scheme $is_default

