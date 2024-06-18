#!/usr/bin/env bash

COLOR="$ORANGE"

sketchybar --add item calendar right \
	--set calendar update_freq=10 \
	icon.color="$COLOR" \
	label.color="$COLOR" \
	label.padding_right=10 \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=5 \
	background.border_width="$BORDER_WIDTH" \
  background.border_color="$ORANGE" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/calendar.sh"
