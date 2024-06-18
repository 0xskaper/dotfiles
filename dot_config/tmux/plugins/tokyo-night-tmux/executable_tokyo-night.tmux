#!/usr/bin/env bash
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# title      Tokyo Night                                              +
# version    1.0.0                                                    +
# repository https://github.com/logico-dev/tokyo-night-tmux           +
# author     Lógico                                                   +
# email      hi@logico.com.ar                                         +
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

RESET="#[fg=brightwhite,bg=#14161b,nobold,noitalics,nounderscore,nodim]"
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux set -g status-left-length 80
tmux set -g status-right-length 150

# Highlight colors
tmux set -g mode-style "fg=#a9b1d6,bg=#2A2F41"

tmux set -g message-style "bg=#7aa2f7,fg=#2A2F41"
tmux set -g message-command-style "fg=#c0caf5,bg=#2A2F41"

tmux set -g pane-border-style "fg=#2A2F41"
tmux set -g pane-active-border-style "fg=#7aa2f7"

tmux set -g status-style "bg=#14161b"

SCRIPTS_PATH="$CURRENT_DIR/src"
TMUX_VARS="$(tmux show -g)"
PANE_BASE="$(echo "$TMUX_VARS" | grep pane-base-index | cut -d" " -f2 | bc)"

default_window_id_style="digital"
default_pane_id_style="hsquare"
default_zoom_id_style="dsquare"

window_id_style="$(echo "$TMUX_VARS" | grep '@tokyo-night-tmux_window_id_style' | cut -d" " -f2)"
pane_id_style="$(echo "$TMUX_VARS" | grep '@tokyo-night-tmux_pane_id_style' | cut -d" " -f2)"
zoom_id_style="$(echo "$TMUX_VARS" | grep '@tokyo-night-tmux_zoom_id_style' | cut -d" " -f2)"
window_id_style="${window_id_style:-$default_window_id_style}"
pane_id_style="${pane_id_style:-$default_pane_id_style}"
zoom_id_style="${zoom_id_style:-$default_zoom_id_style}"

cmus_status="#($SCRIPTS_PATH/music-tmux-statusbar.sh)"
git_status="#($SCRIPTS_PATH/git-status.sh #{pane_current_path})"
wb_git_status="#($SCRIPTS_PATH/wb-git-status.sh #{pane_current_path} &)"
window_number="#($SCRIPTS_PATH/custom-number.sh #I $window_id_style)"
custom_pane="#($SCRIPTS_PATH/custom-number.sh #P $pane_id_style)"
zoom_number="#($SCRIPTS_PATH/custom-number.sh #P $zoom_id_style)"

#+--- Bars LEFT ---+
# Session name
tmux set -g status-left "#[fg=#3399ff,bg=#14161b,bold] #{?client_prefix,󰠠 ,#[dim]󰤂 }#[fg=#ffffff,bg=#14161b,bold,nodim]#S $RESET"

#+--- Windows ---+
# Focus
tmux set -g window-status-current-format "#[fg=#44dfaf,bg=#14161b]   #[fg=#a9b1d6]$window_number #[bold,nodim]#W#[nobold,dim]#{?window_zoomed_flag, $zoom_number, $custom_pane} #{?window_last_flag,,} "
# Unfocused
tmux set -g window-status-format "#[fg=#c0caf5,bg=default,none,dim]   $window_number #W#[nobold,dim]#{?window_zoomed_flag, $zoom_number, $custom_pane}#[fg=yellow,blink] #{?window_last_flag,󰁯 ,} "

#+--- Bars RIGHT ---+
tmux set -g status-right "$cmus_status#[fg=#a9b1d6,bg=#14161b] $git_status$wb_git_status"
tmux set -g window-status-separator ""
