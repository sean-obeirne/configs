#!/bin/bash

if hostname | grep -q black
then
    echo BLACK
    #get the i3 config file
#   sudo cp ~/.config/i3/config ./i3conflaptop

    #get the polybar config file
#   sudo cp ~/.config/polybar/config ./polybarconflaptop

    #get vimrc
#   sudo cp ~/.vimrc ./vimrc
else
    echo MOUNTAINS
    #get the i3 config file
#   sudo cp ~/.config/i3/config ./i3conf

    #get the polybar config file
#   sudo cp ~/.config/polybar/config ./polybarconf

    #get vimrc
#   sudo cp ~/.vimrc ./vimrc
fi
