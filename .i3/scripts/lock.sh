
IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE" # 0.46s

# Alternate screenshot method with imagemagick. NOTE: it is much slower
# SCREENSHOT="import -window root $IMAGE" # 1.35s

# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
BLURTYPE="5x6" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

# Get the screenshot, add the blur and lock the screen with it
$SCREENSHOT
convert $IMAGE -resize 10%
convert $IMAGE -blur $BLURTYPE $IMAGE
convert $IMAGE -resize 1000%
playerctl play-pause
amixer -q sset Master toggle
i3lock -n -i $IMAGE
rm $IMAGE
amixer -q sset Master toggle
playerctl play-pause
