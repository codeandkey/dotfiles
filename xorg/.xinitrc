#feh --bg-fill $HOME/.util/wall.jpg &
xrdb $HOME/.Xresources
polybar main &
sxhkd &

# adjust keyboard repeat rate
xset r rate 250 30

exec bspwm -c $HOME/.config/bspwm/bspwmrc
