# xinitrc
xrdb ~/.Xresources

# add python to PATH
export PATH=$PATH:$HOME/.local/bin

# start compositor
picom --backend glx --corner-radius 5 --blur-background --blur-method kawase &

# choose wallpaper
wall="$HOME/.wallpapers/$(ls $HOME/.wallpapers | shuf -n1)"

# reload wal
wal -i $wall -a 0.8 &

# set bar colors, start bar
bar_theme=docky

$HOME/.config/polybar/$bar_theme/scripts/pywal.sh $wall
$HOME/.config/polybar/launch.sh --$bar_theme

# start notifications
/usr/lib/notify-osd-customizable/notify-osd &

sxhkd &
exec bspwm -c ~/.config/bspwm/bspwmrc
