#!/bin/csh -f

# 768 431

set persist = `cat ~/.mouseSaveSettings`

set screenWidth = $persist[1]
set screenHeight = $persist[2]
set mouseX = $persist[3]
set mouseY = $persist[4]
set distX = $persist[5]
set distY = $persist[6]
set command = $1

@ screenCentreX = $screenWidth / 2
@ screenCentreY = $screenHeight / 2

switch ($command)
	case "c":
		@ distX = $screenCentreX / 2
		@ distY = $screenCentreY / 2
		set mouseX = $screenCentreX
		set mouseY = $screenCentreY
		breaksw
	case "l":
		@ mouseX = $mouseX - $distX
		@ distX = $distX / 2
#		@ distY = $distY / 2
		breaksw
	case "r":
		@ mouseX = $mouseX + $distX
		@ distX = $distX / 2
#		@ distY = $distY / 2
		breaksw
	case "u":
		@ mouseY = $mouseY - $distY
#		@ distX = $distX / 2
		@ distY = $distY / 2
		breaksw
	case "d":
		@ mouseY = $mouseY + $distY
#		@ distX = $distX / 2
		@ distY = $distY / 2
		breaksw
endsw

ydotool mousemove $mouseX $mouseY >&/dev/null

echo -n $screenWidth $screenHeight $mouseX $mouseY $distX $distY > ~/.mouseSaveSettings
