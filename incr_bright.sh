current_brightness=$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ')

increaseBrightness()
{
        if awk -v x=$current_brightness 'BEGIN { exit (x < 1) ? 0 : 1 }'
        then
                xrandr --output HDMI-0 --brightness $new_brightness
                xrandr --output DVI-I-1 --brightness $new_brightness
                exit 0
        else
                exit 1
        fi
}

new_brightness=`echo $current_brightness + 0.05 | bc`

increaseBrightness
