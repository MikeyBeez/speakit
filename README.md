# speakit
Add text to speech to Linux

Aparently TTS for Linux is a moving target.  This worked.  Now it needs festlex-poslex too.  If you have trouble, just look up the error.  It's possible one of the requirements has added a requirement.  Ugh!  That's just how it goes with free software.  As of 9-23-19 this works on Ubuntu MATE 19.04.  

Requirements:
xsel
festival
festlex-poslex
festvox-en1 or any other festival voice you like better
xdotool 

I generally add these package by the apt package manager.  aptget should also work.  If you use a different package manager, that shouldn't be a problem either.

sudo apt install xsel festival festlex-poslex festvox-en1 xdotool -y

I create a simple bash script:  
clone this repository or just create this simple file in an editor:  (cloneing will get any updates)

### Start of file

#!/bin/bash

xdotool click --repeat 3 1  
xsel |festival --tts --pipe  
#xdotool mousemove_relative 0 100

### End of file

The xdotool stuff is optional.  xsel operates on whatever is selected by piping it out to festival.  xdotool click --repeat 3 1 will select whatever paragraph is under the mouse pointer. Remove the xdotool stuff if you want to do your own selecting.  

Place the file where you put put your personal binaries.  For example:

mkdir -p ~/local/bin
cp speakit.sh ~/local/bin/
chmod +x ~/local/bin/speakit.sh

Optionally if you know about symbolic links, you could link ~/local/bin/speakit.sh to the repository.  For example ln -s ~/gits/speakit/speakit.sh speakit.sh
Now a git pull will always get you the latest version.

Then I create a custom keyboard shortcut for the command bash ~/local/bin/speakit.sh (usually I map it to ctrl k)  Here's how to do that in Ubuntu:  https://help.ubuntu.com/stable/ubuntu-help/keyboard-shortcuts-set.html.en      


