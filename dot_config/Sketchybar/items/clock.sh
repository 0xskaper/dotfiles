#!/usr/bin/env bash

COLOR="$GREEN"

sketchybar --add item clock right \
	--set clock update_freq=1 \
	icon.padding_left=5 \
	icon.color="$COLOR" \
	icon="" \
	label.color="$COLOR" \
	label.padding_right=5 \
	label.width=272 \
	align=center \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=2 \
	background.border_width="$BORDER_WIDTH" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/clock.sh"
