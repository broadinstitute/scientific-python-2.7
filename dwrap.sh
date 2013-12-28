#!/bin/bash
#
# Copy intel mkl shared libs from compiler install
#
mkdir intel
cp -R /opt/intel/composerxe/mkl/lib/intel64/* intel
cp -R /opt/intel/composerxe/compiler/lib/intel64/* intel
cp /opt/intel/composerxe/mkl/lib/mic/*scala* intel

# 
# Run the Docker build
#
docker build -t scivm/scientific-python-2.7 .
