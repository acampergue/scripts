#! /bin/sh


if [ $(xrandr|grep "DVI-I-2 connected"|wc -l) -eq 1 ] && [ $(xrandr|grep "DVI-I-3 connected"|wc -l) -eq 1 ]
then
  # at home
   xrandr --output DVI-I-2 --mode 1920x1080 --pos 1440x0 --primary
   xrandr --output DVI-I-3 --auto --pos 0x90 --noprimary
fi

exit 0
