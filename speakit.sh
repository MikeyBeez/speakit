#!/bin/bash

xdotool click --repeat 3 1
xsel |festival --tts --pipe
xdotool mousemove_relative 0 100
