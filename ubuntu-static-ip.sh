#! /bin/bash
# Author: Rudolph Ponce
# RUN THIS SCRIPT AS ROOT!!!!
# This Script Will Assign A Static IP Address
# You May Want to Change a the IP Addr, Netmask, 
# And Gateway To Match Youre Own

clear
echo "[+] Welcome to Ubuntu static IP setup"
sleep 1
echo "[+] This Script Will Assign A Static IP Address"
sleep 1
echo "[+] A back up of the Interfaces is being made"
sleep 1
echo "[+] Please wait.."
sleep 1
echo "[+] Running cp /etc/network/interfaces interfaces.bak"
cp /etc/network/interfaces /etc/network/interfaces.bak
echo "[+] /etc/network/interfaces’ -> ‘interfaces.bak"
echo "[+] Backup Complete"
sleep 1


cat > /etc/network/interfaces << EOF
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# interfaces(5) file used by ifup(8) and ifdown(8)

# The loopback network interface
auto lo eth0
iface lo inet loopback
iface eth0 inet static
address 192.168.5.2
netmask 255.255.255.0
gateway 192.168.5.1
EOF


sleep 1
echo "[+] Setup Done"
sleep 1
cd /etc/network/
cat interfaces
sleep 5
echo "[+] Ending Script"
# EOF
