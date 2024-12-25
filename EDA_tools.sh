#!/bin/bash
# In this script we are going to install all the pre-requisite for the EDA tools we are going to use.

# Firstly, we are going to replace the default apt installer with nala providing faster installation with parallel download.

# In any stage if something is not installed, you may prefer going line by line


# 1) Installing nala

echo "Installing nala"
sudo apt install nala -y

# Updating and upgrading all the packages

echo "Updating and Updating all the packages"
sudo nala update
sudo nala full-upgrade

#pre-requisite files

echo "Pre-requisite files"

sudo nala install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev \
	make m4 tcsh csh libx11-dev gperf  tcl8.6-dev tk8.6 tk8.6-dev \
	libxmp4 libxpm-dev  libxcb1 libcairo2  \
      libxrender-dev libx11-xcb-dev libxaw7-dev freeglut3-dev automake yosys libtool
      
sudo nala full-upgrade



############################################
# Installing Xschem for Schematic Capture
############################################

git clone https://github.com/StefanSchippers/xschem.git xschem
cd xschem
./configure
make
sudo make install
cd

###########################################
# Installing MAGIC VLSI for Layout Design
###########################################
git clone git://opencircuitdesign.com/magic
cd magic
./configure
make
sudo make install
cd


##########################################
# Installing NgSpice
##########################################

git clone https://git.code.sf.net/p/ngspice/ngspice ngspice_git
cd ngspice_git
mkdir release
sudo nala install adms -y
./autogen.sh --adms
cd release
../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-openmp --enable-adms
make
sudo make install
cd


#########################################
# Installing NetGen for LVS
#########################################
git clone git://opencircuitdesign.com/netgen
cd netgen
./configure
sudo make
sudo make install 
cd
