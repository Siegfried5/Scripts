#!/bin/bash

cd $HOME

if ! git="$(type -p "$git")" || [ -z "$git" ]
then
  sudo apt-get install git
fi
cd $HOME
git clone https://github.com/jbremer/vmcloak

cd vmcloak
sudo python setup.py install
