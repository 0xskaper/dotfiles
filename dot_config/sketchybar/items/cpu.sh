#!/usr/bin/env bash

COLOR="0xffb49aef"

sketchybar --add item cpu center \
	--set cpu \
	update_freq=10\
	icon.color="$COLOR" \
	icon.padding_left=7 \
	label.color="0xffffffff" \
	label.padding_right=15 \
	background.height=30 \
	background.corner_radius=10 \
	background.padding_right=0 \
	background.border_width="$BORDER_WIDTH" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/cpu.sh"
