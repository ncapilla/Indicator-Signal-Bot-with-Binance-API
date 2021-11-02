#!/bin/bash

# Reference
# https://github.com/mrjbq7/ta-lib

# Install dependencies
sudo apt install libpython3.9-dev
sudo apt install libtool-bin

wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xzf ta-lib-0.4.0-src.tar.gz
cd ta-lib/

PREFIX=/usr
./configure --prefix=$PREFIX
make
sudo make install

# Do whatever it does
libtool --finish /usr/lib

rm -rf ta-lib-0.4.0-src.tar.gz
rm -rf ta-lib/

export TA_LIBRARY_PATH=${PREFIX}/lib
export TA_INCLUDE_PATH=${PREFIX}/include

pip install ta-lib

