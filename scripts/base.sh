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

# set scripts executable
chmod 755 /tmp/*.sh

# set the apt mirror
touch /root/home
/tmp/aptlocal.sh

# set mkl into the system library path
echo "/usr/local/lib/intel" > /etc/ld.so.conf.d/mkl.conf
ldconfig

# setup deadsnakes apt repo
/tmp/repo.sh

# install depedencies for python packages
/tmp/deps.sh

# hdf5
/tmp/hdf5_install.sh

# blas - don't use this when using mkl
#/tmp/blas.sh

# lapack - don't use this when using mkl
#/tmp/lapack.sh

# scientific python packages
/tmp/packages.sh

# set apt to global setting
/tmp/aptglobal.sh
