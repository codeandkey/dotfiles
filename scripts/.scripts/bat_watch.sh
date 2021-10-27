#!/bin/sh
# watches battery state, creates shell prompt text
# and sends notifications on threshold

INTERVAL=10
WARN=30
CRIT=5

status_path=/tmp/bat_status
time=$(acpi | grep -io "[0-9][0-9]:[0-9]*[0-9]*:[0-9]*[0-9]* remaining")

while :; do
    discharging=$(acpi | grep -i discharging)
    unknown=$(acpi | grep -i unknown)
    pct=$(acpi | grep -io "[0-9]*[0-9]*\%" | cut -d'%' -f1)
    col=

    if [ $pct -ge $WARN ]; then
        touch /tmp/bat_above_warn
    fi

    if [ $pct -ge $CRIT ]; then
        touch /tmp/bat_above_crit
    fi

    if [ -n "$discharging" ]; then

        if [ $pct -lt $WARN ] && [ -e /tmp/bat_above_warn ]; then
            if [ -e /tmp/bat_above_warn ]; then
                rm /tmp/bat_above_warn
                notify-send --urgency=normal 'Battery low' "Battery at $pct%, $time"
            fi

            col="\e[33;1m"
        fi

        if [ $pct -lt $CRIT ]; then
            if [ -e /tmp/bat_above_crit ]; then
                rm /tmp/bat_above_crit
                notify-send --urgency=critical 'Battery critical' "Battery CRITICAL at $pct%, $time"
            fi

            col="\e[31;1m"
        fi

        echo -ne "%{$col%}$pct \uf544%{\e[0m%}" > $status_path
    elif [ -n "$unknown" ]; then
        echo -ne "$pct ?" > $status_path 
    else
        col="\e[34;1m"
        echo -ne "%{$col%}$pct \uf55c%{\e[0m%}" > $status_path
    fi

    sleep $INTERVAL
done
