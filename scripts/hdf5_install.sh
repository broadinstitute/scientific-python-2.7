#!/bin/bash
cd /root
wget http://www.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.8.11.tar.gz
tar xvfz ./hdf5-1.8.11.tar.gz; cd hdf5-1.8.11/
./configure --prefix=/usr/local
make; make install
rm -r -f /root/hdf5*
