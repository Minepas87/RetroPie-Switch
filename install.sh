sudo cp /home/pi/Retropie-Switch/rc.local /etc/rc.local
cd /home/pi/Retropie-Switch
sudo apt install dos2unix
dos2unix init.sh
echo "Installation complete!!!"
echo "Reboot for apply the changes"