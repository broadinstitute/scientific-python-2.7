#!/bin/bash
#
# Copyright (c) 2014 Science Automation, Inc. http://www.scivm.com.  All rights reserved.
# 
# email: contact@scivm.com
# support:  http://support.scivm.com
#
# The MIT License (MIT)
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.  The motd file shall remain
# included to the Dockerfile and unmodified.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
source /opt/ve/bin/activate
source  /opt/intel/mkl/bin/mklvars.sh intel64
#MKL_LIB_PATH=/opt/intel/composerxe/mkl/lib/intel64
#OMP_LIB_PATH=/opt/intel/composerxe/compiler/lib/intel64
#export LD_LIBRARY_PATH=${MKL_LIB_PATH}:${OMP_LIB_PATH}
LD_LIBRARY_PATH=/opt/intel/composer_xe_2013_sp1.0.080/mkl/lib/intel64

# build numpy from source to use mkl blas and lapack
cd /tmp
gunzip numpy-1.8.0.tar.gz
tar xvf numpy-1.8.0.tar
cd numpy-1.8.0
cp /tmp/site.cfg .
python setup.py config install
cd /tmp
rm -r -f /tmp/numpy-1.8.0 numpy-1.8.0.tar.gz

# build scipy from source to use mkl blas and lapack
cd /tmp
gunzip scipy-0.13.2.tar.gz
tar xvf scipy-0.13.2.tar
cd scipy-0.13.2
python setup.py config install
cd /tmp
rm -r -f /tmp/scipy-0.13.2 scipy-0.13.2

