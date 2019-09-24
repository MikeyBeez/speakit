# speakit
Add text to speech to Linux

Requirements:
xsel
festival
festvox-en1 or any other festival voice you like better
and xdotool 

I generally add these package by the apt package manager.  aptget should also work.  If you use a different package manager, that shouldn't be a problem either.

sudo apt install xsel festival festvox-en1 xdotool -y

I create a simple bash script:  

###
#!/bin/bash

xdotool click --repeat 3 1  
xsel |festival --tts --pipe  
xdotool mousemove_relative 0 100
###

The xdotool stuff is optional.  xsel operates on whatever is selected.  xdotool click --repeat 3 1 will select whatever paragraph is under the mouse pointer. Remove the xdotool stuff if you want to do your own selecting.  

Place the file where you put put your personal binaries.  For example:

mkdir ~/local/bin
vim ~/local/bin/speakit.sh
chmod +x ~/local/bin/speakit.sh

Then I create a custom keyboard shortcut for the command bash ~/local/bin/speakit.sh (usually I map it to ctrl k)  Here's how to do that in Ubuntu:  https://help.ubuntu.com/stable/ubuntu-help/keyboard-shortcuts-set.html.en      


