picom &
feh --bg-fill $HOME/.util/wall.jpg &
xrdb $HOME/.Xresources
polybar main &
urxvtd &
sxhkd &

exec bspwm -c $HOME/.config/bspwm/bspwmrc
