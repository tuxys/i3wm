#!/bin/bash
#
# i3wm Script Installer
# by Tux {2021-04-23}
#

##
## NOTE: I never recommended using any installers for customizing i3wm.
## But this script exists for those who are just too busy or too lazy.
##

## default i3 config path
CFG="~/.config/i3"

## custom i3 scripts path
XSH="$CFG/bash"

## bash script helper
URL='https://raw.githubusercontent.com/tuxys/i3wm/main/bash/help.sh'

TXT="

## shorter exec variable
set $run exec --no-startup-id

## custom bash scripts path
set $xsh ~/.config/i3/bash

## create window mark (using rofi)
bindsym $mod+m $run $xsh/help.sh -mark

## remove window mark (using rofi)
bindsym $mod+u $run $xsh/help.sh -nark

## goto window mark (using rofi)
bindsym $mod+g $run $xsh/help.sh -goto

"

## download bash script
if [ ! -f "$XSH/help.sh" ]; then
  curl -# -LR $URL -o "$XSH/help.sh"
  ## fix file permission
  if [ -f "$XSH/help.sh" ]; then
    chmod +x "$XSH/help.sh"
  fi #permission
  if [ -f
fi #download

## modify i3 config
if [ -f "$CFG/config" ]; then
  printf "$TXT" >> "$CFG/config"
else #error
  echo " ## ./$0 script has failed."
  echo " ## ERROR: i3wm config missing."
  echo " ## NOTE: Please config your i3 first."
fi #i3config

#EOF: ~/install.sh
