# xinitrc

xrdb ~/.Xresources

# start compositor
picom --backend glx --corner-radius 5 --blur-background --blur-method kawase &

# reload wal
wal -i $HOME/.wallpapers -a 0.8 &

# start bar
polybar main &

# start notifications
/usr/lib/notify-osd-customizable/notify-osd &

sxhkd &
exec bspwm -c ~/.config/bspwm/bspwmrc
