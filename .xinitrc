numlockx &

xrandr --output HDMI1 --right-of eDP1 &

if xrandr | grep "HDMI1 connected"; then
    i3 -c /home/tono/.i3/config
else
    i3 -c /home/tono/.i3/configsing
fi
