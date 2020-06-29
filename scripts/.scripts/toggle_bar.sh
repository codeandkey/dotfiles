#!/bin/sh
# Stops polybar bar if it's running, otherwise starts it.

if [ -n "$(pgrep -x polybar)" ]; then
	pkill polybar
	bspc config top_padding 0
	notify-send 'Stopped bar.'
else
	bspc config top_padding 30
	polybar main &
	notify-send 'Started bar.'
fi
