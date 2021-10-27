#!/bin/sh
# watches wlan state

INTERVAL=10

status_path=/tmp/wlan_status

echo -n > /tmp/wlan_connected

while :; do
    ssid=$(iwgetid | cut -d'"' -f2)

    if [ -n "$ssid" ]; then
        echo -ne "%{\e[1;34m%}\uf1eb $ssid%{\e[0m%}" > /tmp/wlan_status

        if [ "$(cat /tmp/wlan_connected)" != "$ssid" ]; then
            notify-send 'Wireless connected' "Connected to $ssid"
            echo -n "$ssid" > /tmp/wlan_connected
        fi
    else
        if [ "$(cat /tmp/wlan_connected)" != "$ssid" ]; then
            notify-send 'Wireless disconnected'
            echo -n "$ssid" > /tmp/wlan_connected
        fi

        echo -ne "%{\e[1;33m%}\ufaa9 down%{\e[0m%}" > /tmp/wlan_status
    fi

    sleep $INTERVAL
done
