
# X colors
xrdb $HOME/.Xresources

# bar
polybar main &

# hotkey daemon
sxhkd &

# adjust keyboard repeat rate
xset r rate 250 30

# notification daemon
/usr/lib/notify-customizable/notify-osd &

# window manager
exec bspwm -c $HOME/.config/bspwm/bspwmrc
