sh /home/mark/.screenlayout/landscape.sh &  # Set displays as required
xrdb merge .Xresources                      # Set terminal colours
sxhkd &                                     # Load keybindings
sh /home/mark/.fehbg &                      # Set background
dropboxd &                                  # Start dropbox
xset -dpms                                  # Disable monitor power management
xset s off                                  # Disable screensaver
xsetroot -cursor_name left_ptr              # Set mouse cursor image
pkill compton                               # Cleanup previous compton instances
pkill panel                                 # Cleanup any previous panels
compton -Cczb -r 5 -l -7 -t -7 -i 0.85      # Enable shadows and transparency
exec bspwm                                  # Start the window manager
