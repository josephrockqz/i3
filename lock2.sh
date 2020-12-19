#!/bin/sh

scrot /tmp/screen.png

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args

convert -blur "6x50" /tmp/screen.png /tmp/i3lock.png

i3lock -i /tmp/i3lock.png

rm /tmp/screen.png
