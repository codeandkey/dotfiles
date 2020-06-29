# xinitrc

xrdb ~/.Xresources

# start compositor
compton &

# reload wal
wal -R

# start bar
polybar main &

# start notifications
/usr/lib/notify-osd-customizable/notify-osd &

sxhkd &
exec bspwm -c ~/.config/bspwm/bspwmrc
