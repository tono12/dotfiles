if $(pacmd list-cards | grep -q 'active profile: <output:hdmi')
then pacmd set-card-profile 0 output:analog-stereo
elif $(pacmd list-cards | grep -q 'active profile: <output:anal')
then pacmd set-card-profile 0 output:hdmi-stereo
else echo otro perfil activado
fi
