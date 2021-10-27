# xinitrc
xrdb ~/.Xresources

# add python to PATH
export PATH=$PATH:$HOME/.local/bin

# apply background
feh --bg-fill ~/.wallpapers/black.png &

# start notifications
/usr/lib/notify-osd-customizable/notify-osd &

# start battery watch
~/.scripts/bat_watch.sh &

sxhkd &
exec bspwm -c ~/.config/bspwm/bspwmrc
