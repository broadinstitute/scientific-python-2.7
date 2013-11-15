#!/bin/bash
cd /root
wget http://www.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8.12/src/hdf5-1.8.12.tar.gz
tar xvfz ./hdf5-1.8.12.tar.gz; cd hdf5-1.8.12/
./configure --prefix=/usr/local
make; make install
rm -r -f /root/hdf5*
