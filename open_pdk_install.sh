#!/bin/bash

# We are going to install the open-pdk

sudo nala update
sudo nala full-upgrade

git clone git://opencircuitdesign.com/open_pdks
cd open_pdks

## configure the build, a --prefix option can be given to install
## in a different place, by default after installation a 
## /usr/local/share/pdk directory is created if no --prefix is provided.
## Below line for example requests installation in my home directory
## (/home/schippes/share/pdk):
## ./configure --enable-sky130-pdk --prefix=/home/schippes
## Do the following steps one at a time and ensure no errors are
##  reported after each step.

./configure --enable-sky130-pdk
sudo make
sudo make install
cd

sudo ln -s /usr/local/share/pdk/sky130A/libs.tech/magic/* /usr/local/lib/magic/sys
