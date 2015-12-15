#! /bin/bash
# 
# Author: Rudolph Ponce
#
# This Script Will Automate System Update And Clean up youre Linux repo. Please Run this Scripts as Root
# This Script will only work if you are the apt-get package manager for linux
#
#

apt-get update -y
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean
sleep 5
reset

