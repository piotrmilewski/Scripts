#!/bin/bash

# Script requires scrot, mogrify and i3lock packages to work

# Take a screenshot
scrot ~/Pictures/screen_locked.png

# Pixellate it by a factor of N
declare -i N=10
mogrify -scale $N% -scale $((10000/$N))% ~/Pictures/screen_locked.png

# Lock screen displaying this image
i3lock -i ~/Pictures/screen_locked.png

# Remove the image
rm ~/Pictures/screen_locked.png

# Turn the screen off after a delay.
# sleep 60; pgrep i3lock && xset dpms force off
