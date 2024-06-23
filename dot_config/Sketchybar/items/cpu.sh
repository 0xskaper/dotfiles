#!/usr/bin/env bash

COLOR="0xffb49aef"

sketchybar --add item cpu center \
	--set cpu \
	update_freq=1\
	icon.color="$COLOR" \
	icon.padding_left=10 \
	label.color="$COLOR" \
	label.padding_right=10 \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=5 \
	background.border_width="$BORDER_WIDTH" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/cpu.sh"
