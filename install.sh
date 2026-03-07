#!/bin/bash
set -e

# Jihad Ultimate v7 Installer
# Created for Jihad
# Channel: https://t.me/+JJ_lbGC1B3w2NDVk

if [[ $EUID -ne 0 ]]; then
   echo "Error: This script must be run as root."
   exit 1
fi

echo "🚀 Installing Jihad Ultimate v7..."

# Create necessary directories
mkdir -p /etc/jihad
mkdir -p /etc/jihad/dnstt

# Copy files
cp menu.sh /usr/local/bin/jihad
chmod +x /usr/local/bin/jihad

# Move UDP-Custom binaries
mkdir -p /root/udp
cp udp/* /root/udp/
chmod +x /root/udp/*

# Setup initial status
echo "jihad" > /etc/jihad/.status

echo -e "\n✅ Installation complete!"
echo -e "📢 Channel: https://t.me/+JJ_lbGC1B3w2NDVk"
echo -e "👉 Type 'jihad' to start the manager."
