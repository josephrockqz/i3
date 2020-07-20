scrot /tmp/screen.png

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args

convert -blur "6x50" /tmp/screen.png /tmp/screen_blurred.png

convert /home/joe/.scripts/lockscreen/imgs/montel_tech.png -resize 1085x313 /tmp/montel_tech.png

convert -composite /tmp/screen_blurred.png /tmp/montel_tech.png -geometry +359+312 /tmp/i3lock.png

convert -composite /tmp/i3lock.png /tmp/montel_tech.png -geometry +2279+312 /tmp/i3lock.png



i3lock -i /tmp/i3lock.png

# rm logic

