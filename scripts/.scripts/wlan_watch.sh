#!/bin/sh
# watches wlan state

INTERVAL=10

status_path=/tmp/wlan_status
ssid=$(iwgetid | cut -d'"' -f2)

echo -n > /tmp/wlan_connected

while :; do
    if [ -n "$ssid" ]; then
        echo -ne "%{\e[1;34m%}\uf1eb $ssid%{\e[0m%}" > /tmp/wlan_status

        if [ "$(cat /tmp/wlan_connected)" != "$ssid" ]; then
            notify-send 'Wireless connected' "Connected to $ssid"
            echo -n "$ssid" > /tmp/wlan_connected
        fi
    else
        echo -ne "%{\e[1;33m%}\ufaa9 down%{\e[0m%}" > /tmp/wlan_status
    fi

    sleep $INTERVAL
done
