numlockx &

xrandr --output HDMI-1 --right-of eDP-1 &

if xrandr | grep "HDMI-1 connected"; then
    i3 -c /home/tono/.i3/config
else
    i3 -c /home/tono/.i3/configsing
fi
