# codeandkey-dotfiles
# xinitrc

# add local python PATH
export PATH=$PATH:$HOME/.local/bin

# clear background
feh --bg-fill ~/.wallpapers/black.png &

# start notifications
/usr/lib/notify-osd-customizable/notify-osd &

# keybinds
sxhkd &

# hand off to wm
exec bspwm -c ~/.config/bspwm/bspwmrc
