#!/usr/bin/env bash
# check HDMI connection
rm -f /home/pi/display_loader/name_of_hdmi.txt
tvservice -n 2 > /home/pi/display_loader/name_of_hdmi.txt
HDMI_NAME=`cat /home/pi/display_loader/name_of_hdmi.txt`
if [ "$HDMI_NAME" == "[E] No device present" ]; then
  # HDMI !connected
  LCD_ON=`cat /boot/config.txt | grep "ignore_lcd=1"`
  if [ "$LCD_ON" == "ignore_lcd=1" ]; then
    # reboot because LCD needs a specific configuration
    echo "reboot with LCD"
    sudo cp -rf /home/pi/display_loader/LCD/config.txt /boot/config.txt
    sudo reboot -n
  fi
else
  # HDMI connected
  HDMI_ON=`cat /boot/config.txt | grep "ignore_lcd=0"`
  if [ "$HDMI_ON" == "ignore_lcd=0" ]; then
    # rebbot beacuse HDMI needs a specific configuration
    echo "reboot with HDMI"
    sudo cp -rf /home/pi/display_loader/HDMI/config.txt /boot/config.txt
    sudo reboot -n
  fi
fi
