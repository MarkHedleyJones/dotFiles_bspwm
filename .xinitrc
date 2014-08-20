xrdb merge .Xresources                          # Set terminal colours
sxhkd &                                         # Load keybindings

sh /home/mark/.fehbg &                          # Set background

dropboxd &                                      # Start dropbox
owncloud &                                      # Start owncloud client

xset -dpms                                      # Disable monitor power management
xset s off                                      # Disable screensaver
xsetroot -cursor_name left_ptr                  # Set mouse cursor image

#pkill compton
compton -Cczbf -r 5 -l -7 -t -7 -i 0.85 -D 5    # Enable shadows and transparency
trayer --transparent true --alpha 255 &

[ -e "$panel_fifo" ] && rm "$panel_fifo"
mkfifo "$panel_fifo"

rmmod pcspkr

#/home/mark/.emails.sh
#gnome-settings-daemon &
#nm-applet &
#eval `gnome-keyring-daemon`  # SSH/GPG agent
exec bspwm                                      # Start the window manager
#exec cinnamon-session
#exec gnome-session
#exec awesome
#exec i3
