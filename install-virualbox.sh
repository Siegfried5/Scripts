#!/bin/bash
# Author: Rudolph Ponce
# Date: 22, October 2015
# Note: run this script as root

sudo apt-add-repository "deb http://download.virtualbox.org/virtualbox/debian vivid contrib"
time.sleep(5)
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
time.sleep(1)
sudo apt-get update
time.sleep(1)
sudo apt-get install virtualbox-5.0