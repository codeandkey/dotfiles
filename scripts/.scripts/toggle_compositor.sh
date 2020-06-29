#!/bin/sh
# Stops a compositor if there is one running, or starts one if there is not.

COMPOSITOR=compton

if [ -n "$(pgrep -x $COMPOSITOR)" ]; then
	pkill $COMPOSITOR
	notify-send 'Stopped compositor.'
	echo "Killed $COMPOSITOR."
else
	$COMPOSITOR &
	notify-send 'Started compositor.'
	echo "Started $COMPOSITOR."
fi
