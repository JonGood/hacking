# Platform: Linux
# Distribution: Kali
# Purpose: Install core tools used for ethical hacking.

#!/bin/sh

echo "It's recommended to run this script using sudo."
echo " "
echo " "

# Install Terminator.
echo "Installing Terminator..."
sudo apt-get install terminator
echo " "
echo " "
echo "Terminator is now installed."
echo " "
echo " "

# Update local exploits from exploit-db.
echo "Updating searchsploit exploits..."
sudo searchsploit --update
echo " "
echo " "
echo "Searchsploit has been updated."
echo " "
echo " "

# Install/update seclists (wordlists for passwords, directories, etc.).
echo "Installing or updating seclists..."
sudo apt-get install seclists
echo " "
echo " "
echo "Seclists is now installed at /usr/share/seclists"
echo " "
echo " "

# ::REMOTE Executed Tools (On Kali / Attacker)::
# AUTORECON: Remove old instance and download fresh.
echo "Removing old version of AutoRecon..."
sudo rm -r /opt/remote/AutoRecon
echo "Downloading AutoRecon..."
sudo git clone https://github.com/Tib3rius/AutoRecon.git /opt/remote/AutoRecon
echo " "
echo " "
echo "AutoRecon is now installed in /opt/remote/AutoRecon"
echo " "
echo " "

# ::LOCAL Executed Tools (On Victim)::
# PEASS (WinPEAS / LinPEAS): Remove old instance and download fresh instances of enumeration scripts.
echo "Removing old version of PEASS-ng"
sudo rm -r /opt/local/PEASS-ng
echo "Downloading PEASS-ng..."
sudo git clone https://github.com/carlospolop/PEASS-ng.git /opt/local/PEASS-ng
echo " "
echo " "