# Switcher
Switch to Intel IGP on laptops with hybrid graphics.
If all you want is a longer battery life and acceptable graphics performance while working in a linux environment, then these scripts do exactly what you want! :)
This script will automatically make a switch from nvidia card to intel IGP.

So, without wasting much time let's start off.

Prequisites:

You need to have make, git, dkms and kernel-devel installed.

    # dnf update
    # dnf install make git dkms kernel-devel
    # reboot
    
You will need to clone the bbswitch git repository.

	# git clone https://github.com/Bumblebee-Project/bbswitch


You need to install the bbswitch module. I'd recommend to install it in such a way that it survives kernel upgrades and hence saves you from the trouble of having to set it up everytime you update your system. Change your current directory to bbswitch directory and execute the following command.

	# make -f Makefile.dkms
	# reboot
You need to set up your system to have passwordless sudo access.

	# sudo visudo
Then move to line where it says:

	# %wheel        ALL=(ALL)       ALL
Comment out that line and add the following lines at the end of the file (or anywhere you want :-P)

	# %wheel  ALL=(ALL)       NOPASSWD: ALL
	# YOUR_USERNAME ALL=(ALL) NOPASSWD: ALL
  
Replace YOUR_USERNAME with your username.
   

Now that you're done with prequisites let's move ahead and run the install script (assuming that you've already cloned or downloaded the files and changed your current directory to this one.)

	# chmod 755 install.sh
	# ./install.sh

Edit: I use xfce as my window manager in fedora 25. So, I can't guarantee that the code will work with other Window managers. For that you need to check where the autostart configuration file is stored. (The file/folder related to Session and Autostart Applications.
