#!/bin/bash
#
# i3wm Helpher v0.1
# by Tux {2021-04-23}
#

mark() { ## create window mark
  LIST=$(i3-msg -t get_tree | \
    jq -r 'recurse(.nodes[]).window_properties|select(.)|.title' | grep -v i3bar)
  APPS=$(echo "$LIST" | rofi -dmenu)
  [[ $APPS ]] && MARK=$(echo | rofi -dmenu -p Mark)
  [[ $MARK ]] && i3-msg "[title=\"$APPS\"] mark \"$MARK\""
} #mark

nark() { ## remove window mark
  LIST=$(i3-msg -t get_marks | tr -d '["]' | tr ',' '\n')
  [[ $LIST ]] && NARK=$(echo "$LIST" | rofi -dmenu)
  [[ $NARK ]] && i3-msg -t command unmark "$NARK"
} #nark

goto() { ## goto window mark
  LIST=$(i3-msg -t get_marks | tr -d '["]' | tr ',' '\n')
  [[ $LIST ]] && GOTO=$(echo "$LIST" | rofi -dmenu)
  [[ $GOTO ]] && i3-msg -t command "[title=\".*$GOTO.*\"] focus"
} #goto

case $1 in
  -mark) mark ;;
  -nark) nark ;;
  -goto) goto ;;
esac #menu

#EOF: ~/.config/i3/bash/help.sh
