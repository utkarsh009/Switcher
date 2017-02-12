#!/bin/bash
sudo cp ./Switcher.sh /usr/local/bin/
sudo cp ./Switcher.desktop /home/$USER/.config/autostart/
sudo chmod 755 /usr/local/bin/Switcher.sh
sudo chmod 755 /home/$USER/.config/autostart/Switcher.desktop
echo "All Set! Now reboot the Machine"
