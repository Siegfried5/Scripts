#! /bin/bash
# Author: Rudolph Ponce
# Date: October 14, 2015
#
# This is the set up for Metasploitable2
# All credit goes to Computer Security Student
# This set up is based on Listen 1 of Metasploitable2
# Change the root password after you login
# You will need to be root to run this script
#

cd /etc/apt
cp sources.list sources.list.BKP
ls -l sources.list*
grep -v "^#" sources.list | head -20
sed -i 's/.*/#&/g' /etc/apt/sources.list
grep -v "^#" sources.list | wc -l
tail -5 sources.list
wget http://www.computersecuritystudent.com/SECURITY_TOOLS/METASPLOITABLE/EXPLOIT/lesson1/deb.txt
cat deb.txt
ls -l sources.list
ls -l deb.txt
cat deb.txt >> sources.list
tail -5 sources.list
apt-get update
cd
apt-get install linux-headers-2.6.24-16-server -y
apt-get install zip -y
cd /var/tmp
wget http://lime-forensics.googlecode.com/files/lime-forensics-1.1-r17.tar.gz
tar zxvf lime*.tar.gz
cd src/
make
cd
apt-get install libelfg0-dev -y
cd /var/tmp
wget http://www.prevanders.net/libdwarf-20140208.tar.gz
tar zxvf libdwarf-20140208.tar.gz
cd /var/tmp/dwarf-20140208
ls
./configure
make
cp dwarfdump/dwarfdump /usr/bin
which dwarfdump
cd /var/tmp
wget --no-check-certificate https://volatility.googlecode.com/files/volatility-2.3.1.tar.gz
tar zxvf volatility-2.3.1.tar.gz
cd /var/tmp/volacd /tility-2.3.1/tools/linux
make
ls -l module.dwarf
cd /
zip /var/www/UBUNTU-MSF804.zip /var/tmp/volatility-2.3.1/tools/linux/module.dwarf /boot/System.map-2.6.24-16-server
ls -l /var/www/UBUNTU-MSF804.zip
grep "password changed" /var/log/auth.log
ls -l /var/www/UBUNTU-MSF804.zip
clear
date
echo "The Setup Proccess is now done! Happy Hacking"