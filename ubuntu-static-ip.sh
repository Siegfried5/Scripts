#! bin/bash
# Author: Rudolph Ponce
# RUN THIS SCRIPT AS ROOT!!!!
# This Script Will Assign A Static IP Address
# You May Want to Change a the IP Addr, Netmask, 
# And Gateway To Match Youre Own

echo "Hello World..."
echo "This Script Will Assign A Static IP Address..."
echo "Please wait..."
cd /etc/network/
sleep 5
cp /etc/network/interfaces interfaces.bak -v
sleep 5
cat > /etc/network/interfaces << EOF
interfaces(5) file used by ifup(8) and ifdown(8)
auto lo eth0
iface lo inet loopback
iface eth0 inet static
	address 192.168.5.2 # CHANGE THIS FOR THE OTHER MACHINE
	netmask 255.255.255.0
	gateway 192.168.5.1
EOF
sed -i 's/int/# &/g' /etc/network/interfaces