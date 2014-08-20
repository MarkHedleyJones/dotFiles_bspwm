Notes:

* Install zsh and set as default shell
* Install oh-my-zsh
* Install powerline fonts
* Set gnome-terminal as the default terminal
* Customise gnome terminal with colours and settings
* Add the following line to .vimrc to allow vim to use 256 colour support in gt
    if $COLORTERM == 'gnome-terminal'
      set t_Co=256
    endif
* Install bspwm and sxhkd
* Customise bspwm and sxhkd keybindings and window manager settings
* Install dmenu and dmenu-extended plugin
* Install compton
* Configure /etc/vconsole.conf - set KEYMAP=colemak
* Configure .xinitrc
* Add the following lines to ~/.zsh
    export PANEL_FIFO="/tmp/panel-fifo"
    export PATH=$PATH:/home/mark/.config/panel
    export PANEL_HEIGHT=24
* Add the three panel examples from bspwm examples to .config/panel
* Add execute permissions to the files in .config/panel
* Install sres-git from AUR or baskerville's git repo
* Add panel dzen2 to ~/.config/bspwmrc
