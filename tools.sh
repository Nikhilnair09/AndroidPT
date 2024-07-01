#!/bin/bash

# Update and upgrade the system
echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

# Install Java Development Kit (required for several tools)
echo "Installing Java Development Kit..."
sudo apt install default-jdk -y

# Install Android SDK
echo "Installing Android SDK..."
sudo apt install android-sdk -y

# Install APKTool
echo "Installing APKTool..."
sudo apt install apktool -y

# Install JADX (Java Decompiler)
echo "Installing JADX..."
sudo apt install jadx -y

# Install Burp Suite
echo "Installing Burp Suite..."
sudo apt install burpsuite -y

# Install Frida
echo "Installing Frida..."
sudo apt install frida -y

# Install ADB (Android Debug Bridge)
echo "Installing ADB..."
sudo apt install adb -y

# Install MobSF (Mobile Security Framework)
echo "Installing MobSF..."
sudo apt install python3-pip -y
pip3 install --upgrade pip
pip3 install virtualenv
cd ~
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF.git
cd Mobile-Security-Framework-MobSF
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt

# Install Drozer
echo "Installing Drozer..."
sudo apt install openjdk-8-jdk -y
wget https://github.com/FSecureLABS/drozer/releases/download/2.3.4/drozer_2.3.4.deb
sudo dpkg -i drozer_2.3.4.deb

# Install Androguard
echo "Installing Androguard..."
pip3 install androguard

# Install Genymotion (emulator)
echo "Installing Genymotion..."
cd ~
wget https://dl.genymotion.com/releases/genymotion-3.2.1/genymotion-3.2.1-linux_x64.bin
chmod +x genymotion-3.2.1-linux_x64.bin
./genymotion-3.2.1-linux_x64.bin

# Clean up
echo "Cleaning up..."
sudo apt clean
rm drozer_2.3.4.deb
rm genymotion-3.2.1-linux_x64.bin

echo "All Android penetration testing tools have been installed."

# Note: You may need to configure some tools and set up environment variables.
