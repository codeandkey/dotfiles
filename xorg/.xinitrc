
# X colors
xrdb $HOME/.Xresources

# hotkey daemon
sxhkd &

# adjust keyboard repeat rate
xset r rate 250 30

# notification daemon
/usr/lib/notify-customizable/notify-osd &

# battery signal
batsignal &

# redshift
redshift -l 42.0308:-93.6319 &

# GTK fix
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# window manager
bspwm -c $HOME/.config/bspwm/bspwmrc
