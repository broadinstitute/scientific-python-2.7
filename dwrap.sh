#!/bin/bash
cp -R /opt/intel/composerxe/mkl/lib/intel64/* intel
cp /opt/intel/composerxe/mkl/lib/mic/*scala* intel
#docker build -t scivm/scientific-python-2.7 .
