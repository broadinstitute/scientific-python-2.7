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
# install ssh server
apt-get -y install openssh-server
mkdir -p /var/run/sshd
locale-gen en_US en_US.UTF-8

# install supervisor
apt-get -y install supervisor
mv /tmp/supervisord.conf /etc/supervisor/supervisord.conf
mkdir -p /var/log/supervisor

# compilers and basic tools
apt-get install -y gfortran build-essential make gcc build-essential git-core curl wget vim-tiny nano

# install python
apt-get update
apt-get install -y python2.7 python2.7-dev

# database client
# sqllite, postgresql, mysql client
apt-get install -y libsqlite3-dev sqlite3 postgresql-client-9.1 postgresql-client-common libpq5 libpq-dev libmysqlclient-dev

# needed for httplib2
apt-get install -y libxml2-dev libxslt-dev

# distribute
wget http://python-distribute.org/distribute_setup.py
python distribute_setup.py
rm -f /distribute*

# pip
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
rm -f /get-pip.py

# python-PIL
apt-get install -y python-imaging libpng-dev libfreetype6 libfreetype6-dev

# pyzmq
apt-get install -y libzmq-dev

# virtualenv
# This gets a current version.  Do not use the version packaged with ubuntu
pip install virtualenv==1.10.1

# motd
mv /tmp/motd /etc/motd
rm -rf /etc/update-motd.d
