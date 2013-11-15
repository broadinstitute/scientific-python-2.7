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

# set the apt mirror
touch /root/home
chmod 755 /tmp/aptlocal.sh; /tmp/aptlocal.sh

# install depedencies for python packages
chmod 755 /tmp/deps.sh; /tmp/deps.sh

# hdf5
chmod 755 /tmp/hdf5_install.sh; /tmp/hdf5_install.sh

# blas
chmod 755 /tmp/blas.sh; /tmp/blas.sh

# lapack
chmod 755 /tmp/lapack.sh; /tmp/lapack.sh

# scientific python packages
chmod 755 /tmp/packages.sh; /tmp/packages.sh

# set apt to global setting
chmod 755 /tmp/aptglobal.sh; /tmp/aptglobal.sh
