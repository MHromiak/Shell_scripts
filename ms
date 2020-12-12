#!/bin/bash

# sysinfo_page - An improved version of cd. Finds all instances of a directory to change into. If it is unique, it changes to the directory. Otherwise, it lists options for the user.



h_info() {
        echo "Made to switch my mouse, named "Compx 2.4G Receiver Mouse", with button mapping 1-9 in Ubuntu 20.04.1 LTS"
	echo
	echo  "Button labels: '1 - Button Left' '2 - Button Middle' '3 - Button Right' '4 - Button Wheel Up' '5 - Button Wheel Down' '6 - Button Horiz Wheel Left' '7 - Button Horiz Wheel Right' '8 - Button Side' '9 - Button Extra"

        echo
        echo "  Syntax: ms [-h]"
        echo
        echo "  Examples - assuming sourcing is done"
        echo "          $ ms"
        echo "          $ ms -h"
        echo 
        echo "  Examples assuming sourcing is not done"
        echo "          $ source ms"
        echo "          $ . ms -h"


}



################ MS below  ###############
if [ "$1" = "-h" ]; then
	h_info
	return
fi


DEVICE_NAME="Compx 2.4G Receiver Mouse"
current_button_map=$(xinput get-button-map "$DEVICE_NAME")

if [[ ${current_button_map:0:5} == "1 2 3" ]]; then
	
	$(xinput set-button-map "$DEVICE_NAME" 3 2 1)
else
	$(xinput set-button-map "$DEVICE_NAME" 1 2 3)
fi
